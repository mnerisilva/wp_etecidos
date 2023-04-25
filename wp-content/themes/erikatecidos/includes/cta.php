
    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">
        <div class="row">
                        <?php 
                        // args
                        $args = array(
                            'numberposts'   => 1,
                            'post_type'     => 'cta'
                        );
                        // query
                        $the_query = new WP_Query( $args );
                        ?>
                        <?php if( $the_query->have_posts() ): ?>
                            <?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>
                            <?php if( get_field('com_botao_de_acao') ){ ?> 
                                <div class="col-lg-9 text-center text-lg-start">
                                  <h3><?php the_field('texto_destaque_da_secao_cta'); ?></h3>
                                  <p><?php the_field('primeiro_paragrafo'); ?></p>
                                  <p><?php the_field('segundo_paragrafo'); ?></p>
                                  <p><?php the_field('terceiro_paragrafo'); ?></p>
                                </div>
                                <div class="col-lg-3 cta-btn-container text-center">
                                  <a class="cta-btn align-middle" href="#"><?php the_field('texto_do_botao_de_acao'); ?></a>
                                </div>
                            <?php } else { ?>
                                <div class="col-lg-12 text-center text-lg-start">
                                  <h3><?php the_field('texto_destaque_da_secao_cta'); ?></h3>
                                  <p><?php the_field('primeiro_paragrafo'); ?></p>
                                  <p><?php the_field('segundo_paragrafo'); ?></p>
                                  <p><?php the_field('terceiro_paragrafo'); ?></p>
                                </div>
                            <?php }; ?>
                            <?php endwhile; ?>
                        <?php endif; ?>
                        <?php wp_reset_query();   // Restore global post data stomped by the_post(). ?>
        </div><!-- row -->
      </div><!-- Container -->
    </section><!-- End Cta Section -->