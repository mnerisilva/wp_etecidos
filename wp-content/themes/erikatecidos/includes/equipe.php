 <!-- ======= Equipe Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title"><!-- section-title -->
          <h2>Nossa equipe</h2>
              <?php 
              // args
              $args = array(
                  'numberposts'   => 1,
                  'post_type'     => 'equipe_cabecalho'
              );
              // query
              $the_query = new WP_Query( $args );
              ?>
              <?php if( $the_query->have_posts() ): ?>
                  <?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>
                  <p><?php the_field('primeiro_paragrafo'); ?></p>
                  <p><?php the_field('Segundo_paragrafo'); ?></p>
                  <p><?php the_field('Terceiro_paragrafo'); ?></p>
                  <?php endwhile; ?>
              <?php endif; ?>
              <?php wp_reset_query();   //$the_query->found_posts; Restore global post data stomped by the_post(). ?>  
        </div><!-- section-title -->
        <div class="row"><!-- row -->                
              <?php 
              // args
              $args = array(
                  'numberposts'   => -1,
                  'post_type'     => 'equipe_dados',
                  'orderby' => 'post_title',
                  'order' => 'ASC'
              );
              // query
              $the_query = new WP_Query( $args );
              ?>
              <?php if( $the_query->have_posts() ): ?>
                  <?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>  
                      <div class="col-lg-6 mt-4 mt-lg-4" data-aos="zoom-in" data-aos-delay="100">
                        <div class="member d-flex align-items-start">
                          <div class="pic"><img src="<?php the_post_thumbnail_url(); ?>" class="img-fluid" alt=""></div>
                          <div class="member-info">
                            <h4><?php the_title(); ?></h4>
                            <span><?php the_field('funcao_cargo'); ?></span>
                            <p><?php the_field('breve_descricao'); ?></p>
                            <div class="social">
                              <a href="<?php the_field('link_da_rede_social1'); ?>"><?php the_field('icone_da_rede_social1'); ?></a>
                              <a href="<?php the_field('link_da_rede_social2'); ?>"><?php the_field('icone_da_rede_social2'); ?></a>
                              <a href="<?php the_field('link_da_rede_social3'); ?>"><?php the_field('icone_da_rede_social3'); ?></a>
                              <a href="<?php the_field('link_da_rede_social4'); ?>"><?php the_field('icone_da_rede_social4'); ?></a>
                            </div>
                          </div>
                        </div>
                      </div>
                  <?php endwhile; ?>
              <?php endif; ?>
              <?php wp_reset_query();   //$the_query->found_posts; Restore global post data stomped by the_post(). ?>
        </div><!-- row -->
      </div><!-- container -->
    </section><!-- End Equipe Section -->