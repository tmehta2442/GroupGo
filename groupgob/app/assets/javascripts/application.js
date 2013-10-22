// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


function addList(emailList) {
    var email = document.getElementById(emailList);
    var number = email.rows.length;
    var row = email.insertRow(number);
    var b=document.getElementById('entry1').value;
    var first_cell = row.insertCell(0);
    var element1 = document.createElement("input");
        element1.type = "text";
        element1.style.width="100%";
        element1.name = "txtbox[]";
        element1.value=b;
	    first_cell.appendChild(element1);
    var second_cell = row.insertCell(1);
    var element2 = document.createElement("input");
            element2.type = "checkbox";
            element2.name="chkbox[]";
            second_cell.appendChild(element2);
document.getElementById('entry1').value=" ";
document.getElementById('emailTotal').innerHTML= number + 1;
       	}
 
function deleteList(emailList) {
    var email = document.getElementById(emailList);
    var number = email.rows.length;
        for(var i=0; i<number; i++) {
            var row = email.rows[i];
            var chkbox = row.cells[1].childNodes[0];
            if(null != chkbox && true == chkbox.checked) {
                email.deleteRow(i);
                number--;
                i--;
              
 document.getElementById('emailTotal').innerHTML= number;

        }
    }
}


