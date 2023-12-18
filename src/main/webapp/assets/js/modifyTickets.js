
// Variables de modifyTickets.jsp


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
const activo = document.getElementById("active").checked;
const pagado = document.getElementById("paid").checked;
// Recarga la pagina que lo llamó descartando los cambios
    location.href= `../jsp/actualizarTickets.jsp?tramite=${tramite}&`+
    `nombre=${nombre}&apellido=${apellido}&eMail=${email}&activo=${activo}&pagado=${pagado}
    			     			   `
});        
        
        
// UPDATE `base_oradores`.`tickets` SET `Nombre` = 'Miguel', `Apellido` = 'Suarez', `eMail` = 'miguesuarez3545@gmail.com', `Cantidad` = '5', `Pago` = '500', `Descuento` = '50', `Activo` = FALSE, `Pagado` = FALSE WHERE (`id_tickets` = '00091');        