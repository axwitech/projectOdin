var rows;
var colums;
var newHeight;
var newWidth;
var $row = $("<div />", {class: 'row'});
var $square = $("<div />", {class: 'square'});

$(document).ready(function(){

	//$(".square").hover(function(){
	//$( this ).addClass("hover");
  	
});

function generateGrid(x,y){
	
      
	 for(var i = 0; i < x; i++){

            $("#wrapper").append($row.clone());
            $(".row").height(newHeight); 
             
    }

    for(var i = 0; i < y; i++){
    		
            $(".row").append($square.clone());
            $(".square").height(newHeight);
			$(".square").width(newWidth);
            
		
    }

}

function clear(){

}

function effects(){
	$(".square").hover(function(){
	$( this ).addClass("hover");
	});
}

	

function promptGrid(){
	rows = prompt("How many rows?");
	columns = prompt("How many columns?");
	resizeToFit(rows,columns);
	generateGrid(rows, columns);
	effects();
}
function resizeToFit(x,y){
	var wrapperHeight = $("#wrapper").height();
	console.log(wrapperHeight);
	var wrapperWidth = $("#wrapper").width();
	console.log(wrapperWidth);
	newHeight = Math.round(wrapperHeight/x);
	console.log(newHeight);
	newWidth = Math.round(wrapperWidth/y);
	console.log(newWidth);
	
	
	
}