
	
function nobackbutton()
		{
		   window.location.hash="no-back-button";
		   window.location.hash="Again-No-back-button"
		   window.onhashchange=function(){window.location.hash="no-back-button";}   
		}

 document.getElementById('aceptButton').addEventListener('click', _ => {
// Recarga el codigo HTML original de la pagina
     location.href="../pages/tickets.html"
        });
/*
	window.onload =function(){
			let tramite = document.getElementById("tramite").textContent;
			alert (`¡Ticket comprado!... Tome nota del numero de Tramite\n
					`+ tramite );
		location.href="../pages/tickets.html";
	}
*/