var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "hackgsu_userinfo"
});

con.connect();
con.query("SELECT * FROM profile_info_basic", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
});
con.connection.end();


function nameChange() {
    var userName = "marie_ow"; //get userName from database
    var x1 = document.getElementById("name").innerHTML; //returns ID name
    var res = x1 + userName; //concatenates to create Username: marie_ow
    document.getElementById("name").innerHTML = res; //Changes ID name value to new concatenated variable
    var userYear = "Sophomore";//get userYear from database
    var x2 = document.getElementById("year").innerHTML;
    var res2 = x2 + userYear;
    document.getElementById("year").innerHTML = res2;
    var userClasses = "CSCI 1301";//get userClases from database
    var x3 = document.getElementById("classes").innerHTML;
    var res3 = x3 + userClasses;
    document.getElementById("classes").innerHTML = res3;
    var userInterests = "Mobile app development";//get userInterests from database
    var x4 = document.getElementById("interests").innerHTML;
    var res4 = x4 + userInterests;
    document.getElementById("interests").innerHTML = res4;
    var userLanguages = "Java, blah"; //get userLanguages from the database
    var x5 = document.getElementById("languages").innerHTML;
    var res5 = x5 + userLanguages;
    document.getElementById("languages").innerHTML = res5;
};
