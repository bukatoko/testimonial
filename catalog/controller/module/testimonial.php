<?php
class ControllerModuleTestimonial extends Controller {
	protected function index($setting) {
		$this->language->load('module/testimonial');

		// Add by Bukatoko® 2014-08-12
		$this->load->model('tool/image');

		$this->load->model('testimonial/testimonial');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/stylesheet/ym.css')) {
			$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/testimonial.css');
		} else {
			$this->document->addStyle('catalog/view/theme/default/stylesheet/testimonial.css');
		}

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_no_results'] = $this->language->get('text_no_results');
		$this->data['text_more'] = $this->language->get('text_more');
		$this->data['text_add'] = $this->language->get('text_add');

		$this->data['testimonials'] = array();

		$results = $this->model_testimonial_testimonial->getTestimonials(0, $setting['limit']);

		foreach ($results as $result) {
			$url = '';

			if ($result['url']) {
				if (strpos($result['url'], "http://") !== false) {
					$url = $result['url'];
				} else {
					$url = 'http://' . $result['url'];
				}
			}

			// Add by Bukatoko® 2014-08-12
			// Silahkan ganti angka untuk mengatur ukurang image
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], 50, 50);
			} else {
				$image = false;
			}

			$this->data['testimonials'][] = array(
				'name'			=> $result['name'],
				'url'			=> $url,
				'location'		=> $result['location'],
				'rating'		=> $result['rating'],
				'date'			=> $result['date'],
				'image'			=> $image,	// Add by Bukatoko® 2014-08-12
				'description'	=> strlen(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')) < 180 ? html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8') : substr(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'), 0, 150) . '<span>...</span>'
			);
		}

		$this->data['more'] = $this->url->link('testimonial/testimonial');
		$this->data['add'] = $this->url->link('testimonial/testimonial_form');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/testimonial.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/testimonial.tpl';
		} else {
			$this->template = 'default/template/module/testimonial.tpl';
		}

		$this->render();
	}
}
?>
