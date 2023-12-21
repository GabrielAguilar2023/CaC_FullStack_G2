const cancelButton = document.getElementById("cancelButton");
const saveButton = document.getElementById("saveButton");

cancelButton.addEventListener('click', _ => {
	// Recarga la pagina que lo llamó descartando los cambios
    location.href="../jsp/restrictedAccess.jsp"
});

saveButton.addEventListener('click', _ => {
			
	const tramite = document.getElementById("tramite").innerText;
	const nombre = document.getElementById("name").value;
	const apellido = document.getElementById("surName").value;
	const email = document.getElementById("eMail").value;
	const tema = document.getElementById("tema").value;
	const activo = document.getElementById("active").checked;

	location.href =	`../jsp/updateSpeaker.jsp?tramite=${tramite}&`+
					`nombre=${nombre}&apellido=${apellido}&eMail=${email}&`+
					`tema=${tema}&activo=${activo}`
});