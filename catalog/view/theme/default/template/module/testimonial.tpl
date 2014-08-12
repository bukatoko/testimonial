<div class="box">
	<div class="box-heading"><?php echo $heading_title; ?></div>
	<div class="box-content testimonial">
		<?php if ($testimonials) { ?>
			
			<ul>
			<?php foreach ($testimonials as $testimonial) { ?>
				<li>
					<div class="description">
						<?php echo $testimonial['description']; ?>
					</div>	
					<div class="rating">
						<img src="catalog/view/theme/default/image/stars-<?php echo $testimonial['rating'] . '.png'; ?>" alt="<?php echo $testimonial['rating']; ?>" />
					</div>
					<div class="profile">
						<img src="<?php echo $testimonial['image']; ?>" alt="<?php echo $testimonial['name']; ?>">
							
						<?php if ($testimonial['url']) { ?>
							<a href="<?php echo $testimonial['url']; ?>" target="_blank"><?php echo $testimonial['name']; ?></a>
						<?php } else { ?>
							<?php echo $testimonial['name']; ?>
						<?php } ?>
							
						<?php if ($testimonial['location']) { ?>
							<em><?php echo $testimonial['location']; ?></em>
						<?php } ?>
					</div>
				</li>

			<?php } ?>
			</ul>

		<?php } else { ?>
			<div class="content"><?php echo $text_no_results; ?></div>
		<?php } ?>

		<div class="links">
			<a href="<?php echo $more; ?>"><span><?php echo $text_more; ?></span></a> | <a href="<?php echo $add; ?>"><span><?php echo $text_add; ?></span></a>
		</div>
</div>
</div>
