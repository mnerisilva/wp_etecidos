    <!-- ======= Fornecedores Section ======= -->
    <section id="clients" class="clients section-bg">
      <div class="container">
        <div class="row" data-aos="zoom-in">
              <?php
                $args = array(
                'post_type' => 'post',
                'post_status' => 'publish',
                'category_name' => 'fornecedor',/*
                'posts_per_page' => 5,*/
            );
            $arr_posts = new WP_Query( $args );
              
            if ( $arr_posts->have_posts() ) :
              
                while ( $arr_posts->have_posts() ) :
                    $arr_posts->the_post();
                    ?>
                    <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                        <?php
                        if ( has_post_thumbnail() ) :
                          the_post_thumbnail('thumbnail', array('class' => 'img-fluid'));
                        endif;
                        ?>
                    </div>
                    <?php
                endwhile;
                wp_reset_postdata();
            endif;
            ?>
        </div><!-- row -->
      </div><!-- container -->
    </section><!-- End Fornecedores Section -->