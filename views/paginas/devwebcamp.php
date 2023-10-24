<main class="devwebcamp">
    <h2 class="devwebcamp__heading"><?php echo $titulo; ?></h2>
    <p class="devwebcamp__descripcion">Conoce la conferencia más importante de Venezuela</p>

    <div class="devwebcamp__grid">
        <div <?php aos_animacion(); ?> class="devwebcamp__imagen">
            <picture>
                <source srcset="build/img/sobre_devwebcamp.avif" type="image/avif">
                <source srcset="build/img/sobre_devwebcamp.webp" type="image/webp">
                <img loading="lazy" width="200" height="300" src="build/img/sobre_devwebcamp.jpg" alt="Imagen DevWebcamp">
            </picture>
        </div>

        <div  class="devwebcamp__contenido">
            <p <?php aos_animacion(); ?> class="devwebcamp__texto">DevWebCamp es una conferencia para desarrolladores de todos los niveles, que tiene como objetivo compartir conocimientos, experiencias y buenas prácticas sobre el desarrollo web. Se lleva a cabo de forma presencial y en línea, ofreciendo la oportunidad de interactuar con ponentes y asistentes de diferentes partes del mundo.</p>
            
            <p <?php aos_animacion(); ?> class="devwebcamp__texto">En DevWebCamp podrás aprender sobre las últimas tendencias y tecnologías del sector, así como mejorar tus habilidades y ampliar tu red de contactos. Además, podrás participar en cursos y talleres. No importa si eres principiante o experto, en DevWebCamp encontrarás algo para ti.</p>
        </div>
    </div>
</main>