<script> //para que nos de valido el codigo ya que esta en java
    document.addEventListener('DOMContentLoaded', () => {
    //para obtener todos lo elementos//(aprender javascript)
    const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
    //agregar eventos con click//
    $navbarBurgers.forEach( el => {
    el.addEventListener('click', () => {
        //obtener el objetivo del atributo
        const target = el.dataset.target;
        const $target = document.getElementById(target);
        //Cambia la clase "is-active" tanto en "navbar-burger" como en "navbar-menu"
        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');
        });
        });
    });
</script>
<script src="./js/ajax.js"></script> 