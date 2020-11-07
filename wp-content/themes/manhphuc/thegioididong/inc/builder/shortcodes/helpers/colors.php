<?php

return array(
	array(
		'title' => 'Dark',
		'value' => 'rgb(0,0,0)',
	),
	array(
		'title' => 'White',
		'value' => 'rgb(255,255,255)',
	),
	array(
		'title' => 'Primary',
		'value' => get_theme_mod( 'color_primary', flatsome_default_color( 'color_primary' ) ),
	),
	array(
		'title' => 'Secondary',
		'value' => get_theme_mod( 'color_secondary', flatsome_default_color( 'color_secondary' ) ),
	),
	array(
		'title' => 'Success',
		'value' => get_theme_mod( 'color_success', flatsome_default_color( 'color_success' ) ),
	),
);
