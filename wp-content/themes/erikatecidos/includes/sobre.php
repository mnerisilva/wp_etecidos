
    <!-- ======= Sobre Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h2>Sobre nós</h2>
        </div>
        <div class="row content">
                      <div class="col-lg-12">
                        <?php 
                        // args
                        $args = array(
                            'numberposts'   => 1,
                            'post_type'     => 'sobrenos'
                        );
                        // query
                        $the_query = new WP_Query( $args );
                        ?>
                        <?php if( $the_query->have_posts() ): ?>
                            <?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>
                            <p><?php the_field('primeiro_paragrafo'); ?></p>
                            <p><?php the_field('segundo_paragrafo'); ?></p>
                            <p><?php the_field('terceiro_paragrafo'); ?></p>
                            <p><?php the_field('quarto_paragrafo'); ?></p>
                            <p><?php the_field('quinto_paragrafo'); ?></p>
                            <p><?php the_field('sexto_paragrafo'); ?></p>
                            <?php if( get_field('adiciona_botao_de_acao_sobre') ){ ?> 
                                <div style="display: flex; justify-content: <?php the_field('posicao_do_botao_de_acao'); ?>;"><a href="<?php the_field('texto_link_do_botao_de_acao'); ?>" class="btn-learn-more"><?php the_field('texto_botao_de_acao'); ?></a></div>
                            <?php }; ?>
                            <?php endwhile; ?>
                        <?php endif; ?>
                        <?php wp_reset_query();   // Restore global post data stomped by the_post(). ?>
                    </div> 
        </div><!-- content -->
      </div><!-- container -->
    </section><!-- End Sobre Us Section -->