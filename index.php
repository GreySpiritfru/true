<?php

include_once('init.php');

$pageName = $_GET['page'] ?? 'index';
$path = "controllers/$pageName.php";
$pageTitle = 'Ошибка 404';
$pageContent = '';
$style = 'index';

if(checkControllerName($pageName) && file_exists($path)){
	include_once($path);
}
else{
	$pageContent = template('errors/v_404');
}

$html = template('base/v_main', [
	'style' => $style,
	'title' => $pageTitle,
	'content' => $pageContent
]);

echo $html;