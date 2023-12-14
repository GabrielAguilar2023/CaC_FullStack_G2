const tablaTickets = document.getElementById("listadoTickets");
const modifyTicketBut = document.getElementById("modifyTicketButton");

tablaTickets.addEventListener("click",ejecutar);


function ejecutar(e){
	let fila = e.target.parentElement;
	fila.classList.replace('normal','activa');
	
	if(window.activa !== undefined){
       window.activa.classList.replace('activa', 'normal');
    }
       window.activa = event.target.parentElement;
		
	let id_tickets = fila.childNodes[1].id;
	modifyTicketBut.disabled = false;
	
//	alert(modifyTicketBut.disabled);
	
}










// let tabla = document.getElementById("listadoTickets").childNodes[1].childNodes[2].childNodes[1].id