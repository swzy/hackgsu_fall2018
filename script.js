function langCheck() {
   var classForm = document.getElementById("lang");
   var classTags = classForm.getElementsByTagName("input");
   var checkedArr = [];

   for(var i = 0; i < classTags.length; i++) {
     if(classTags[i].checked) {
       checkedArr[i].value = classTags[i].value;
       console.log(classTags[i].value + " is checked!");
      }
     else {
        console.log(classTags[i].value + " not checked");
      }
   }//for
}//skill

function unhide() {

  var classForm = document.getElementById("lang");
  var hidden = classForm.getElementsByTagName("input");

  for(var j = 0; j < hidden.length; j++) {

    if(hidden[j].checked) {
      var noob = "sel" + j;
      document.getElementById(noob).style.display = "block";
    }
    else if (hidden[j].checked == false) {
      var noob = "sel" + j;
      document.getElementById(noob).style.display = "none";
    }
  }
}

function profile_fill() {
  window.open("profile.html");
}
