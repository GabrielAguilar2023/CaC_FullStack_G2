function create (element,classElement,id,elementText){
    const something = document.createElement(element);
    something.classList.add(classElement[0],classElement[1],classElement[2],classElement[3],classElement[4],classElement[5]);
    something.innerText =elementText;
    something.setAttribute("id",id);
    return something;
}

function showSummary(){
    const unit = (data.numberTickets=="1") ? "unidad" : "unidades";
    const bottonClass = ["w-100","btn","btn-lg","btn-form","buttonColor","mb-3"];
    const line = document.createElement("hr");
// Crea un nuevo body para el mostrar el resumen
    newBody = document.querySelector("body");
// Crea el contenedor del ticket borrando el codigo original
    newBody.innerHTML = "<div class='containerTicket'></div>"
    const containerTicket = document.querySelector(".containerTicket");
// Acá comienza el ticket
    containerTicket.insertAdjacentHTML("afterbegin","<div class='ticket'></div>");
    const ticket = containerTicket.querySelector(".ticket");
    ticket.insertAdjacentHTML("beforeend","<div class='title'></div>");
       
//    ticket.setAttribute('id', "printSelection");
     
    const title = ticket.querySelector(".title");
    title.insertAdjacentHTML("beforeend","<h1>RESUMEN DE COMPRA</h1>");
    title.insertAdjacentHTML("afterend","<hr>");
    ticket.insertAdjacentHTML("beforeend","<div class='detail'></div>")
    const detail = ticket.querySelector(".detail");
    detail.insertAdjacentHTML("beforeend","<div class='firstRow'></div>")
    const firstRow = detail.querySelector(".firstRow");
    firstRow.insertAdjacentHTML("afterend","<hr>");
    firstRow.insertAdjacentHTML("beforeend","<h5>Tickets para <b>Conf. Bs.As.</b></h5>");
    firstRow.insertAdjacentHTML("beforeend","<p>Fecha 15/12/2023 17:30 Hs.</p>");      
    detail.insertAdjacentHTML ("beforeend","<div class='renglon1 simpleRow'></div>");
    const simpleRow = detail.querySelector(".simpleRow");
    simpleRow.insertAdjacentHTML("beforeend","<h5>Nombre</h5>");
    simpleRow.insertAdjacentHTML("beforeend",`<p>${data.name} ${data.surName}</p>`);   
    document.querySelector(".renglon1").insertAdjacentHTML("beforeend","<hr>");
    simpleRow.insertAdjacentHTML("beforeend","<h5>Email</h5>");
    simpleRow.insertAdjacentHTML("beforeend",`<p id='email'>${data.eMail}</p>`);   
    document.querySelector("#email").insertAdjacentHTML("afterend","<hr>"); 
    detail.insertAdjacentHTML("beforeend","<div class='renglonImportante1 importantRow'></div>");
    const importantRow = detail.querySelector(".importantRow");
    importantRow.insertAdjacentHTML("beforeend","<h5>Cantidad de tickets</h5>");
    importantRow.insertAdjacentHTML("beforeend",`<div class='containerCountTicket'></div>`);
    const containerCountTicket = importantRow.querySelector('.containerCountTicket');
    containerCountTicket.insertAdjacentHTML("beforeend",`<p class="fieldSecond" id="countTicket">${data.numberTickets}</p>`);
    containerCountTicket.insertAdjacentHTML("beforeend",`<p class="fieldSecond">${unit} X $ ${ticketValue} = $ ${data.numberTickets*200}</p>`);
    document.querySelector(".renglonImportante1").appendChild(line);

// Muestra precio descontado si existe descuento para no mostrar cero   
    if(!(data.discount==1)){
    importantRow.insertAdjacentHTML("beforeend","<h5>Descuento</h5>");
    importantRow.insertAdjacentHTML("beforeend",`<div class='containerDiscount'></div>`); //
    const containerDiscount = importantRow.querySelector('.containerDiscount');
    containerDiscount.insertAdjacentHTML("beforeend",`<p class='fieldSecond' id = 'discountType'> ${data.discountType}:</p>`);
    containerDiscount.insertAdjacentHTML("beforeend",`<p class='fieldSecond' id = 'discountValue'> - ${Math.round(100*(1-data.discount))}%  = $ ${Math.round(data.numberTickets * (1-data.discount)*200)} </p>`);
    importantRow.insertAdjacentHTML("beforeend","<hr>");
    };
// TOTAL A PAGAR
    importantRow.insertAdjacentHTML("beforeend","<h5 id='totalLegend'>Total a pagar</h5>");
    importantRow.insertAdjacentHTML("beforeend",`<p>$ ${data.pay}</p>`);
// Contenendor de codigo QR
    ticket.insertAdjacentHTML("beforeend","<div class='containerQR'></div>");
    const containerQR = document.querySelector(".containerQR");    
    containerQR.insertAdjacentHTML("afterbegin",`<img alt='Barcode Generator TEC-IT'
    src='https://barcode.tec-it.com/barcode.ashx?data=SIMULACION+DE+PAGO+QR%3A%0A${data.eMail}++paga+%24+${data.pay}%0A%0AProyecto+Integrador+%0AGabriel+Aguilar+23548%0A&code=QRCode&eclevel=L&dmsize=Default'/>`);  
    containerQR.insertAdjacentHTML("beforeend","<p>Escanea el código QR <br> para realizar tu pago.</p>");
// Crea contenedor de botones dentro del contenedor del ticket   
    containerTicket.insertAdjacentHTML("beforeend","<div class='ticketButton'></div>");
    const ticketButton = document.querySelector(".ticketButton");
// Crea los botones
    ticketButton.appendChild(create('button',bottonClass,'confirm','Confirmar el Pago'));
    ticketButton.appendChild(create('button',bottonClass,'back','Volver'));
       
    function sendForm(){
        let formulario = document.createElement('form');
        formulario.action = "../jsp/tickets.jsp";
        formulario.method = 'GET';
        formulario.innerHTML = `<input name="name" value=${data.name}> 
        						<input name="surName" value=${data.surName}>
        						<input name="eMail" value=${data.eMail}>
        						<input name="numberTickets" value=${data.numberTickets}>
        						<input name="pay" value=${data.pay}>
        						<input name="discount" value=${data.discount}>`;
        						
        formulario.setAttribute('id', "formSend");//Asignar el atributo id
        // el formulario debe estar en el document para poder enviarlo
        document.body.append(formulario);
        window.print();
        formulario.submit();
}

// Codigo de accion de los botones
    document.getElementById('back').addEventListener('click', _ => {
// Recarga el codigo HTML original de la pagina
    location.reload();
        });
// Envia el formulario a ticket.jsp  
    document.getElementById('confirm').addEventListener('click', _ => sendForm());
}