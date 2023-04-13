const formularios_ajax=document.querySelectorAll(".FormularioAjax")
function enviar_formulario_ajax(e){
    e.preventDefault();
    let enviar=confirm("Quieres enviar el formulario"); //mediante esto enviamos o no el formulario
    if(enviar==true){
        let data= new FormData(this); //enviamos datos desde el formulario
        let method=this.getAttribute("method");//recordar que con let escribimos variables
        let action=this.getAttribute("action");

        let encabezados= new Headers();

        let config={
            method: method,
            headers: encabezados,
            mode: 'cors',
            cache: 'no-cache',
            body: data
        };

        fetch(action,config)
        .then(respuesta => respuesta.text()) //esto lo formateara a texto plano
        .then(respuesta =>{ 
            let contenedor=document.querySelector(".form-rest");
            contenedor.innerHTML = respuesta;
        });
    }
}
formularios_ajax.forEach(formularios =>{
    formularios.addEventListener("submit",enviar_formulario_ajax)
});
//todo esto es para enviar los datos tipo ajax