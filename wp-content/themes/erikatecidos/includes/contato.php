    <!-- ======= Contato Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">
              <?php 
              // args
              $args = array(
                  'numberposts'   => 1,
                  'post_type'     => 'contato'
              );
              // query
              $the_query = new WP_Query( $args );
              ?>
              <?php if( $the_query->have_posts() ): ?>
                  <?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>
                    <div class="section-title">
                      <h2>Contato</h2>                      
                      <p><?php the_field('primeiro_paragrafo'); ?></p>
                      <p><?php the_field('segundo_paragrafo'); ?></p>
                    </div>
                    <div class="row">
                      <div class="col-lg-5 d-flex align-items-stretch">
                        <div class="info">
                          <div class="address">
                            <i class="bi bi-geo-alt"></i>
                            <h4>Localização:</h4>                            
                            <p><?php the_field('localizacao'); ?></p>
                          </div>
                          <div class="email">
                            <i class="bi bi-envelope"></i>
                            <h4>E-mail:</h4>                            
                            <p><?php the_field('email'); ?></p>
                          </div>
                          <div class="phone">
                            <i class="bi bi-phone"></i>
                            <h4>Fone:</h4>                            
                            <p><?php the_field('fone'); ?></p>
                          </div>
                          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5000.3643604445015!2d-48.61900146791806!3d-27.599991578175764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9527362f269fcb03%3A0xe14d2bb1ab071dbd!2sErika%20Tecidos%20para%20Decora%C3%A7%C3%A3o!5e0!3m2!1spt-BR!2sbr!4v1679322250049!5m2!1spt-BR!2sbr" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe>
                        </div>
                      </div>    
                  <?php endwhile; ?>
              <?php endif; ?>
              <?php wp_reset_query();   //$the_query->found_posts; Restore global post data stomped by the_post(). ?>
                      <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
                        <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <label for="name">Seu Nome</label>
                              <input type="text" name="name" class="form-control" id="name" required>
                            </div>
                            <div class="form-group col-md-6">
                              <label for="name">Seu E-mail</label>
                              <input type="email" class="form-control" name="email" id="email" required>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="name">Assunto</label>
                            <input type="text" class="form-control" name="subject" id="subject" required>
                          </div>
                          <div class="form-group">
                            <label for="name">Mensagem</label>
                            <textarea class="form-control" name="message" rows="10" required></textarea>
                          </div>
                          <div class="my-3">
                            <div class="loading">Loading</div>
                            <div class="error-message"></div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>
                          </div>
                          <div class="text-center"><button type="submit">Enviar Mensagem</button></div>
                        </form>
                      </div>

                    </div><!-- row -->
      </div><!-- container -->
    </section><!-- End Contato Section -->