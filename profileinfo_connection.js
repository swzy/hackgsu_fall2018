var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "hackgsu_userinfo"
});

con.connect(function(err) {
  if (err) throw err;
  con.query("SELECT * FROM profile_info_basic", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });
});
