<?php

Flatsome_Option::add_panel( 'style', array(
  'title'       => __( 'Style', 'flatsome-admin' ),
) );

Flatsome_Option::add_section( 'custom-css', array(
	'title'       => __( 'Custom CSS', 'flatsome-admin' ),
	'panel'       => 'style',
) );

Flatsome_Option::add_field( 'option',  array(
	'type'        => 'textarea',
	'settings'     => 'html_custom_css',
	'label'       => __( 'Custom CSS', 'flatsome-admin' ),
	'section'     => 'custom-css',
	'transport'   => $transport,
	'placeholder' => '.add-css-here{}',
));

Flatsome_Option::add_field( 'option',  array(
	'type'        => 'textarea',
	'settings'     => 'html_custom_css_tablet',
	'label'       => __( 'Custom Tablet CSS', 'flatsome-admin' ),
	'section'     => 'custom-css',
	'default'     => '',
  'placeholder' => '.add-css-here{}',
	'transport'   => $transport,
));

Flatsome_Option::add_field( 'option',  array(
	'type'        => 'textarea',
	'settings'     => 'html_custom_css_mobile',
	'label'       => __( 'Custom Mobile CSS', 'flatsome-admin' ),
	'section'     => 'custom-css',
	'default'     => '',
  'placeholder' => '.add-css-here{}',
	'transport'   => $transport,
));
