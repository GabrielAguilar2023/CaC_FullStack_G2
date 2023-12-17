const permiso = document.getElementById("permiso");


window.onload=function(){
if (permiso.innerText=="true"){
	location.href="restrictedAccess.jsp";
	}else{
	location.href="../pages/login.html?response=false";
		
	}
};

function nobackbutton()
		{
		   window.location.hash="no-back-button";
		   window.location.hash="Again-No-back-button"
		   window.onhashchange=function(){window.location.hash="no-back-button";}   
		}

	