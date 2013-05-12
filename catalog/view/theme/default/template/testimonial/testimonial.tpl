<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($testimonials) { ?>
  <div class="product-list">
    <?php foreach ($testimonials as $testimonial) { ?>
    <div>
	  <div class="name">
        <?php if ($testimonial['url']) { ?>
        <a href="<?php echo $testimonial['url']; ?>" target="_blank"><span><?php echo $testimonial['name']; ?></span></a>
        <?php } else { ?>
        <a style="cursor: text;"><span><?php echo $testimonial['name']; ?></span></a>
		<?php } ?>
		<br />
		<?php if ($testimonial['location']) { ?>
        <span><?php echo $testimonial['location']; ?></span><br />
		<?php } ?>
		<span><?php echo $testimonial['date']; ?></span><br />
      </div>
      <img src="catalog/view/theme/default/image/stars-<?php echo $testimonial['rating'] . '.png'; ?>" alt="<?php echo $testimonial['rating']; ?>" /><br /><br />
      <?php if ($testimonial['image']) { ?>
      <div class="image" style="float: none;"><img src="image/<?php echo $testimonial['image']; ?>" title="" alt="<?php echo $testimonial['image']; ?>" /></div>
      <?php } ?>
      <div class="description"><?php echo $testimonial['description']; ?></div>
    </div>
    <?php } ?>
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