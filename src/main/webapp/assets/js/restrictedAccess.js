const tablaTickets = document.getElementById("listadoTickets");
const tablaSpeakers = document.getElementById("listadoSpeakers")
const modifyTicketButton = document.getElementById("modifyTicketButton");
const modifySpeakerButton = document.getElementById("modifySpeakerButton");
const aceptButton = document.getElementById("aceptButton");

let seleccionado;
let speakerSelected;

tablaTickets.addEventListener("click",selectTicket);
tablaSpeakers.addEventListener("click",selectSpeaker);

function selectTicket(e){
	let fila = e.target.parentElement;
	fila.classList.replace('normal','activa');
	
	if(window.activa !== undefined){
       window.activa.classList.replace('activa', 'normal');
    }
    window.activa = event.target.parentElement;
		
	seleccionado = fila.childNodes[1].id;
	modifyTicketButton.disabled = false;
	modifySpeakerButton.disabled = true;
	}
	
function selectSpeaker(e){	
	let filaSpeaker = e.target.parentElement;
	filaSpeaker.classList.replace('normal','activa');
		
	if(window.activa !== undefined){
       window.activa.classList.replace('activa', 'normal');
    }
    window.activa = event.target.parentElement;
		
	speakerSelected = filaSpeaker.childNodes[1].id;
	modifySpeakerButton.disabled = false;
	modifyTicketButton.disabled = true;
	}	
	
modifyTicketButton.addEventListener('click', _ => {
// Llama al proceso de modificacion del registro seleccionado
     location.href=`modifyTicket.jsp?id=${seleccionado}`
        });
        
modifySpeakerButton.addEventListener('click', _ => {
// Llama al proceso de modificacion del registro seleccionado
     location.href=`modifySpeaker.jsp?id=${speakerSelected}`
    
        });       
        
aceptButton.addEventListener('click', _ => {
// Llama al proceso de modificacion del registro seleccionado
     location.href=`../../index.html`
});
