var mysql = require('mysql');
var inquirer = require('inquirer');

var connection = mysql.createConnection ({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'root',
    database: 'bamazon'

});


//create connection to database


connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
  }

  start();
});

function start(){  
  connection.query("SELECT * FROM products", function(err,res)
  {
    if (err) throw err;
    console.log(res);
   
    inquirer
    .prompt([
      {
      type: "rawdata",
      name: 'requestedID',
      message: " What is the ID of the item you want to buy?"
    }])
    .then(function(answer){
      if (answer.requestedID <= res.length){
        askItem(answer.requestedID);
      }
      else{
        console.log("ID not valid!");
        connection.end();
      }
    });
  });

  function askItem (id) {
     inquirer
    .prompt(
      {
       type: "input",
       message: " How many items do you want to buy?",
       name: 'items'
    })
    .then(function(answer){

      var query = "SELECT * FROM products WHERE item_id=?"
      connection.query(query, id, function(err, response){
       

        if (response[0].stock_quantity < parseInt(answer.items)){
          console.log("Out of Stock!")
          startOver();

        }
        else {
          console.log("Order successful!");
          console.log("Your cost is: $" + response[0].price* parseInt(answer.items));
           reduceItems(response[0].item_id, response[0].stock_quantity - parseInt(answer.items));
         
        }
      })


   function reduceItems(id,number){
     var query = "UPDATE products SET stock_quantity=? WHERE item_id=?"

     var sqlArr = [number,id]

     connection.query(query,sqlArr, function(err, res){
      
     })

   }

   function startOver(){
     inquirer
    .prompt(
      {
       type: "list",
       message: "What do you want to do?",
       name: 'restart',
       choices: ["Goodbye!","Back to the list!"]
    })
   }
  })
}
}
