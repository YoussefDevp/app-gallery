export function creaMenu(){
    const nav = document.querySelector('#nav')
    nav.innerHTML=` 
    <img src="../img/logo/2.png" alt="" srcset="">
          <ul>
              <li><a href="../index.html">Home</a></li>
              <li><a href="./Exposición.html">Exposición </a></li>
              <li><a href="./Galería.html">Galería</a></li>
              <li><a href="./Enventa.html">En venta </a></li>
              <li><a href="./Equipo.html">Equipo</a></li>
              <li><a href="./Contacto.html">Contacto</a></li>
              <li><a href="./Artistas.html">Artistas</a></li>
              <li><a href="./blog.html">Blog</a></li>
              <li><a href="./Premios.html">Premios</a></li>
          </ul>
`
}



export function creaFooter(footer){
    footer.innerHTML=`
    <div class="m-width">

    <img src="../img/logo/1.png" alt="" srcset="">
    <div class="social-links">
        <i class="fa-brands fa-facebook"></i>
        <i class="fa-brands fa-youtube"></i>
        <i class="fa-brands fa-instagram"></i>
    </div>        
</div>
<p> Copyright  &copy;  2024 Artist
    All Rights Reserved</p>           
    `
}


