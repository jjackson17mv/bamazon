var mysql = ("mysql");
var inquirer = ('inquirer');

var connection = mysql.createconnection ({
    host: 'localhost',
    port: 7070,
    user: 'root',
    password: 'root',
    database: 'bamazon'

});


//create connection to database


connection.connect(function(err) {
    if(err) throw err;
    console.log("connected as id " + connection.threadId);

  start();
});
