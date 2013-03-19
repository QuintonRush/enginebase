<?php
/* @var $this UserController */
/* @var $model User */

$this->breadcrumbs=array(
	'Users'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Engine-1.0', 'url'=>array('index')),
	array('label'=>'Engine-2.0', 'url'=>array('admin')),
);
?>

<h1>Create New Release</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>