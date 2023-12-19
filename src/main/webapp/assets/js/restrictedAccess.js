const tablaTickets = document.getElementById("listadoTickets");
const tablaSpeakers = document.getElementById("listadoSpeakers")
const modifyTicketButton = document.getElementById("modifyTicketButton");
const modifySpeakerButton = document.getElementById("modifySpeakerButton");
const aceptButton = document.getElementById("aceptButton");

let seleccionado;
let speakerSelected;

tablaTickets.addEventListener("click",ejecutar);
tablaSpeakers.addEventListener("click",ejecutar2);

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
	
function ejecutar2(e){	
	
	let filaSpeaker = e.target.parentElement;
	filaSpeaker.classList.replace('normal','activa');
	

	
	if(window.activa !== undefined){
       window.activa.classList.replace('activa', 'normal');
    }
       window.activa = event.target.parentElement;
		
	speakerSelected = fila.childNodes[1].id;
	modifySpeakerButton.disabled = false;
	
	}	
	
	
	

modifyTicketButton.addEventListener('click', _ => {
// Llama al proceso de modificacion del registro seleccionado
     location.href=`modifyTicket.jsp?id=${seleccionado}`
        });
        
modifySpeakerButton.addEventListener('click', _ => {
// Llama al proceso de modificacion del registro seleccionado
     //location.href=`modifyTicket.jsp?id=${seleccionado}`
     alert(123);
        });       
        
aceptButton.addEventListener('click', _ => {
// Llama al proceso de modificacion del registro seleccionado
     location.href=`../../index.html`
});
