<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($testimonials) { ?>
  <div class="testimonial-list">
  <ul>
    <?php foreach ($testimonials as $testimonial) { ?>
   
      <li>
        <div class="rating">
          <img src="catalog/view/theme/default/image/stars-<?php echo $testimonial['rating'] . '.png'; ?>" alt="<?php echo $testimonial['rating']; ?>" />
        </div>
        <div class="description">
          <?php echo $testimonial['description']; ?>
        </div>
        <div class="profile">       
            <?php if ($testimonial['image']) { ?>
              <div class="image"><img src="<?php echo $testimonial['image']; ?>" title="" alt="<?php echo $testimonial['image']; ?>" /></div>
            <?php } ?>
            <div class="info">
              <span class="testi-date"><?php echo $testimonial['date']; ?></span>
              <?php if ($testimonial['url']) { ?>
                <a href="<?php echo $testimonial['url']; ?>" target="_blank"><span><?php echo $testimonial['name']; ?></span></a>
              <?php } else { ?>
                <a><span><?php echo $testimonial['name']; ?></span></a>
              <?php } ?>
              <?php if ($testimonial['location']) { ?>
                <span class="testi-location"><?php echo $testimonial['location']; ?></span><br />
              <?php } ?>
            </div>
        </div>

      </li>
    <?php } ;?>

    </ul>
    

  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_no_results; ?></div>
  <?php } ?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $add; ?>" class="button"><span><?php echo $text_add; ?></span></a></div>
  </div>
  <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
