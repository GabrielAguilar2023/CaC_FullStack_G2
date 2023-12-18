const tablaTickets = document.getElementById("listadoTickets");
const modifyTicketButton = document.getElementById("modifyTicketButton");
const aceptButton = document.getElementById("aceptButton");

let seleccionado;

tablaTickets.addEventListener("click",ejecutar);

function ejecutar(e){
	let fila = e.target.parentElement;
	fila.classList.replace('normal','activa');
	
	if(window.activa !== undefined){
       window.activa.classList.replace('activa', 'normal');
    }
       window.activa = event.target.parentElement;
		
	seleccionado = fila.childNodes[1].id;
	modifyTicketButton.disabled = false;
	
	}

modifyTicketButton.addEventListener('click', _ => {
// Llama al proceso de modificacion del registro seleccionado
     location.href=`modifyTicket.jsp?id=${seleccionado}`
        });
        
aceptButton.addEventListener('click', _ => {
// Llama al proceso de modificacion del registro seleccionado
     location.href=`../../index.html`
});
