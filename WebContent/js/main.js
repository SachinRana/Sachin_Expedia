// The root URL for the RESTful services
var rootURL = "http://localhost:8080/Sachin_Expedia/rest/hotels";
var rootURL1 = "http://localhost:8080/Sachin_Expedia/rest/hotels/searchAll";

function searchHotelByName(){
	  var searchKey = $('input[id$="hotelId"]').val();	  
	   console.log('findByName: ' + searchKey);
		$.ajax({
			type: 'GET',
			url: rootURL + '/searchByName/' + searchKey,
			dataType: "json",
			success : function(data) {	
		
				$('#tbody').empty();
				renderList(data);
			
			}
			
		});
	  
	  }
function renderList(data) {
	var list = data == null ? [] : (data instanceof Array ? data : [data]);
	
    $('#tbody').empty();	
	$.each(list, function(index, vtn) {	
		
		 tr = $('<tr/>');
         tr.append("<td>" + vtn.hotelId  + "</td>");
         tr.append("<td>" + vtn.name+ "</td>");
         tr.append("<td>" + vtn.country  + "</td>");           	
     	 tr.append("<td>" + vtn.streetAddress + "</td>");         	
         tr.append("<td>" + vtn.userCity + "</td>");
         tr.append("<td>" + vtn.latitude + "</td>");
         tr.append("<td>" + vtn.longitude + "</td>");        
         tr.append("<td>" + vtn.checkInDate + "</td>");
         tr.append("<td>" + vtn.checkOutDate + "</td>");
      
         $('#tbody').append(tr);

	});
}

function addNewHotels()
{
	   alert("InProgress");
	 
} 

function findallHotels() {
	document.getElementById('login-box').style.display = 'none';
		console.log('findAll');
		$.ajax({
			type: 'GET',
			url: rootURL1,
			dataType: "json", // data type of response
			success: renderList
		});
	}


function findById(id) {
	console.log('findById: ' + id);
	$.ajax({
		type: 'GET',
		url: rootURL + '/' + id,
		dataType: "json",
		success: function(data){			
			console.log('findById success: ' + data.name);			
			renderDetails(data);
		}
	});
}
