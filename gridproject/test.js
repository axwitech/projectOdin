var rows;
var colums;
var $row = $("<div />", {class: 'row'});
var $square = $("<div />", {class: 'square'});

$(document).ready(function(){
   

	//$(".square").hover(function(){
	 //	  $( this ).addClass("hover");
	
  //});

});

function generateGrid(x,y){
	 for(var i = 0; i < x; i++){      
            $("#wrapper").append($row.clone());
    }

    for(var i = 0; i < y; i++){
            $(".row").append($square.clone());
    }

}

function clear(){

}

function promptGrid(){
	rows = prompt("How many rows?");
	columns = prompt("How many columns?");
	generateGrid(rows, columns);
}