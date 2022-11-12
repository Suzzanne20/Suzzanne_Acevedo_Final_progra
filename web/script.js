/* global Swal */

window.onload=function(){
    alert("Bienvenido");   
}

function init(){
    
}

function comeDom (){
    let UsuarioModell = new Object();
    let user=document.getElementById("user");
    let pass=document.getElementById("pass");
    UsuarioModell.user=user.value;
    UsuarioModell.pass=pass.value;
    console.log(UsuarioModell);
    user.value='';
    pass.value='';
}


function sendData(){
	const XHR = new XMLHttpRequest();
	  var formData = new URLSearchParams(new FormData(document.getElementById('formu'))).toString();
	  XHR.addEventListener('error',(event) => {alert('Oops! ah ocurrido un error (T_T)');});
	  XHR.open('POST', 'ServletLibro', true);
          XHR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    
          XHR.onload = () => { if (XHR.readyState === XHR.DONE && XHR.status === 200){
            console.log("response => " + XHR.response);
            document.getElementById('regTab').innerHTML=XHR.response; susMsj('Guardado exitosamente'); clearFormu();}};
          XHR.send(formData);	
}
/*
function sendDataEdit(){
	const XHR = new XMLHttpRequest();
	  var formData = new URLSearchParams(new FormData(document.getElementById('formEdit'))).toString();
	  XHR.addEventListener('error',(event) => {alert('Oops! ah ocurrido un error (T_T)');});
	  XHR.open('POST', 'ServletEdit', true);
          XHR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    
          XHR.onload = () => { if (XHR.readyState === XHR.DONE && XHR.status === 200){
            console.log("response => " + XHR.response);
            document.getElementById('regTabEditorial').innerHTML=XHR.response; susMsj('Guardado exitosamente'); clearFormuEdi();}};
          XHR.send(formData);	
}*/

function sendData2(){
	const XHR = new XMLHttpRequest();
	  var formData = new URLSearchParams(new FormData(document.getElementById('formUSER'))).toString();
	  XHR.addEventListener('error',(event) => {alert('Oops! ah ocurrido un error (T_T)');});
	  XHR.open('POST', 'ServletUser', true);
          XHR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    
          XHR.onload = () => { if (XHR.readyState === XHR.DONE && XHR.status === 200){
            console.log("response => " + XHR.response);
            susMsj('Guardado exitosamente'); }else{errMsj('Error al Guardar')}};
          XHR.send(formData);	
}

function clearFormu(){
    document.getElementById("cod").value='';
    document.getElementById("name").value='';
    document.getElementById("tip").value='';
    document.getElementById("publi").value='';
    document.getElementById("edit").value='';
}

function clearFormuEdi(){
    document.getElementById("codE").value='';
    document.getElementById("nameE").value='';
    document.getElementById("pais").value='';
}

function susMsj(msj){
  Swal.fire({
  icon: 'success',
  title: msj,
  showConfirmButton: false,
  timer: 1500
})
}

function errMsj(){
  Swal.fire({
  icon: 'error',
  title: 'Usuario no Encontrado',
  showConfirmButton: false,
  timer: 1500
})
}

function eliminaruser(codigo){
    const XHR = new XMLHttpRequest();
    var formData = new URLSearchParams(new FormData());

    XHR.addEventListener('error', (event) => {
      alert('Oops! Something went wrong.');
    });

    XHR.open('POST', 'ServletUser', true);
    XHR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    XHR.onload = () => {
      if (XHR.readyState === XHR.DONE && XHR.status === 200) {
        console.log("response => " + XHR.response);
        susMsj('Adiooos');
        setTimeout( 2000 );
      }
    };        
    formData.append('id_DB', codigo);
    formData.append('control', 'ELIMINAR');
    XHR.send(formData); 

}

function eliminarEditorial(codigo){
    const XHR = new XMLHttpRequest();
    var formData = new URLSearchParams(new FormData());

    XHR.addEventListener('error', (event) => {
      alert('Oops! Something went wrong.');
    });

    XHR.open('POST', 'ServletEdit', true);
    XHR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    XHR.onload = () => {
      if (XHR.readyState === XHR.DONE && XHR.status === 200) {
        console.log("response => " + XHR.response);
        susMsj('Adiooos');
        setTimeout( 2000 );
      }
    };        
    formData.append('id', codigo);
    formData.append('control', 'ELIMINAR');
    XHR.send(formData); 

}

function eliminarLibro(codigo){
    const XHR = new XMLHttpRequest();
    var formData = new URLSearchParams(new FormData());

    XHR.addEventListener('error', (event) => {
      alert('Oops! Something went wrong.');
    });

    XHR.open('POST', 'ServletLibro', true);
    XHR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    XHR.onload = () => {
      if (XHR.readyState === XHR.DONE && XHR.status === 200) {
        console.log("response => " + XHR.response);
        susMsj('Adiooos');
        setTimeout( 2000 );
      }
    };        
    formData.append('codigoBD', codigo);
    formData.append('control', 'ELIMINAR');
    XHR.send(formData); 

}

function f5() { window.location.reload();};
