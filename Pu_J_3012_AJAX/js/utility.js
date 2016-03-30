// JavaScript Document
(function() {
	"use strict";
	var request, url, movieLinks, path, build, filterLinks = document.querySelectorAll(".filterNav a"), srchInput = document.querySelector("#srch"), live = document.querySelector("#livesrch");
	
		
	
	function init() {
		url="admin/includes/getMovies.php";
		build='';
		path = 'init';
		reqInfo(path); 
	}

	function reqInfo(path) {
		if(window.XMLHttpRequest) { 
			request = new XMLHttpRequest(); 
		}else{
			request = new ActiveXObject("Microsoft.XMLHTTP");	
		}
		
		request.open("GET",url,true); 
		request.send();
		if(path==="liveSearch") {
			
			request.onreadystatechange = searchItems; 
			
		} else {
			request.onreadystatechange = addItems;
		}
	}
	
	function addItems() {
		var con = document.querySelector(".movies");
		var details = document.querySelector(".details");
		con.innerHTML = "";
		build = "";
		if((request.readyState===4) && (request.status===200)) {
			var items = JSON.parse(request.responseText);
			if(items.length !==0) {
				if(items.length>1){
				for(var i=0; i<items.length; i++) {
					build += '<div class="small-12 medium-12 columns">';
					build += '<img src="images/'+ items[i].movies_thumb + '" alt="' + items[i].movies_title + '" class="small-12 medium-4 columns">';
					//build += '<div class="small-12 medium-8 columns">';
					//build += '<div class="row">';
					build += '<h2 class="small-12 medium-6 columns">' + items[i].movies_title + '</h2>';
					build += '<h3 class="small-12 medium-2 columns">'+"Year: "+items[i].movies_year + '</h3>';
					build += '<a href="index.php?id=' + items[i].movies_id + '" class="small-12 medium-12 columns">more...</a><br><br>';
					//build += '</div>';	
					build += '</div>';	
				}
				con.innerHTML = build;
				movieLinks = document.querySelectorAll(".movies a");
					for(var j=0; j<movieLinks.length; j++) {
						movieLinks[j].addEventListener('click', itemDetails, false);
					}
				} else {
					for(var k=0; k<items.length; k++) {
						build += '<div class="small-12 medium-12 columns">';
						build += '<img src="images/'+ items[k].movies_fimg + '" alt="' + items[k].movies_title + '" class="small-12 medium-4 columns">';
						build += '<h2 class="small-12 medium-6 columns">' + items[k].movies_title + '</h2>';
						build += '<h3 class="small-12 medium-2 columns">' +"Release Year: "+ items[k].movies_year + '</h3>';
						build += '<p class="small-12 medium-12 columns">' +"Plot"+'<br>'+ items[k].movies_storyline + '</p>';
						build += '<a href="index.php" class="small-12 medium-12 columns">' +"< Back"+ '</a>';
						build += '</div>';
					}
					con.innerHTML = build;
					//var detailLink;
					//detailLink = document.querySelector(".details");
				}
					
			} else {
				con.innerHTML = "sorry, there was a server error, please try again";
			}
		}
	}
	function itemDetails(e) {
		e.preventDefault();
		var str = e.target.href;
		var arr = str.split('=');
		var newid = arr[1];
		url = "admin/includes/getMovies.php?id=" + newid; 
		path = "details";
		reqInfo(path);
	}
	
	function filterItems(e) {
		e.preventDefault();
		var str = e.target.href;
		var arr = str.split('=');
		var cat = arr[1];
		if(cat) {
			url = "admin/includes/getMovies.php?filter=" + cat;			
		} else { 
			url = "admin/includes/getMovies.php";
		}
		path = "filter";
		reqInfo(path);
	}

	function searchItems() {
		if((request.readyState===4) || (request.status===200)) { 
			var srchItems = JSON.parse(request.responseText); 
			
			for(var i=0; i<srchItems.length; i++) {
				build += '<a href="#">';
				build += '<img src="images/'+ srchItems[i].movies_thumb + '" alt="' + srchItems[i].movies_title + '">';//get the image from the database
				
				
				build += '<h4>'+srchItems[i].movies_title+'</h4>';
				build += '<h5>'+srchItems[i].movies_year+'</h5>'+'<br>';
				build += '</a>';//make the whole stuff become a link;
			}
		
			live.innerHTML = build;
			
			build='';
		}
	}
	
	function liveSearch() {
		live.innerHTML = 'No Result Match';

		var capture = srchInput.value;
		if(capture ==='a'||capture ==='s'||capture ==='d'||capture ==='f'||capture ==='g'||capture ==='h'||capture ==='j'||capture ==='k'||capture ==='l'||capture ==='q'||capture ==='w'||capture ==='e'||capture ==='r'||capture ==='t'||capture ==='y'||capture ==='u'||capture ==='i'||capture ==='o'||capture ==='p'||capture ==='z'||capture ==='x'||capture ==='c'||capture ==='v'||capture ==='b'||capture ==='n'||capture ==='m'||capture ==='A'||capture ==='S'||capture ==='D'||capture ==='F'||capture ==='G'||capture ==='H'||capture ==='J'||capture ==='K'||capture ==='L'||capture ==='Q'||capture ==='W'||capture ==='E'||capture ==='R'||capture ==='T'||capture ==='Y'||capture ==='U'||capture ==='I'||capture ==='O'||capture ==='P'||capture ==='Z'||capture ==='X'||capture ==='C'||capture ==='V'||capture ==='B'||capture ==='N'||capture ==='M'){//set get all by space three times

		url="admin/includes/getMovies.php?srch="+capture; 
		path = "liveSearch";
		reqInfo(path);
	}else if(capture ===''){
		live.innerHTML = 'Please type the key word!';//prevent  the space search 
	}
	}
	
	// Listeners
	for(var x=0;x<filterLinks.length;x++){
		filterLinks[x].addEventListener("click",filterItems,false);
	}
	window.addEventListener("load", init, false);
	srchInput.addEventListener("keyup", liveSearch, false); 
	
})();
