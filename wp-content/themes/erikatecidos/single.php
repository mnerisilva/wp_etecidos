<?php wp_head();

 if(have_posts()) {
  while(have_posts()) {
    the_post(); ?>


  <?php if(the_post_thumbnail()) { ?>
    <div>
      <?php the_post_thumbnail() ?>
    </div>
  <?php } ?>

  <a href="<?php the_permalink(); ?>"><h1><?php the_title(); ?></h1></a>
  
  <!-- Conteudo -->
  <div>
    <?php the_content(); ?>
  </div>

<?php }
} ?>

<?php wp_footer() ?>