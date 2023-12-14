const tablaTickets = document.getElementById("listadoTickets")

tablaTickets.addEventListener("click",ejecutar);


function ejecutar(e){
	let id_tickets = e.target.parentElement.childNodes[1].id;
	alert(id_tickets);
	
}










// let tabla = document.getElementById("listadoTickets").childNodes[1].childNodes[2].childNodes[1].id