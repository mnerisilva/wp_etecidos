 <!-- ======= Hero Section ======= -->
                      <?php 
                      // args
                      $args = array(
                          'numberposts'   => 1,
                          'post_type'     => 'banner'
                      );
                      // query
                      $the_query = new WP_Query( $args );
                      ?>
                      <?php if( $the_query->have_posts() ): ?>
                          <?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>

  <section id="hero" class="d-flex align-items-center" style="background-image: url(<?php the_post_thumbnail_url(); ?>)">
    <div class="background-mask"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1 slogan" data-aos="fade-up" data-aos-delay="200">                          
                            <!--<h1>Better Solutions For Your Business</h1>-->
                            <h1><?php the_field('texto_destaque_do_banner'); ?></h1>
                            <!--<h2>We are team of talented designers making websites with Bootstrap</h2>-->
                            <h2><?php the_field('texto_secundario_do_banner'); ?></h2>
                            <div class="d-flex justify-content-center justify-content-lg-start">
                              <a href="#about" class="btn-get-started scrollto"><?php the_field('texto_botao_de_acao_do_banner'); ?></a>
                              <a href="<?php the_field('link'); ?>" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span><?php the_field('texto_botao_video_do_banner'); ?></span></a>
                          <?php endwhile; ?>
                      <?php endif; ?>
                      <?php wp_reset_query();   // Restore global post data stomped by the_post(). ?>
        </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="<?php echo get_template_directory_uri(); ?>/assets/img/hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>
  </section><!-- End Hero -->