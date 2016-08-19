<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">

    <?php echo $content_top; ?>


    <?php if ($categories) { ?>
    <div class="col-xs-9 menu-home">
         <?php foreach ($categories as $category) { ?>
        
        <li><a style="background: url('<?php echo $category['image']; ?>');" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        
        <?php } ?>
        </div>
        <?php } ?>


        <?php echo $content_bottom; ?>

    <div class="col-xs-12 banners">
        <div class="col-xs-4 banner"><img src="/catalog/view/theme/default/image/map.jpg" alt=""><a href="#">Карта магазинов</a></div>
        <div class="col-xs-4 banner"><img src="/catalog/view/theme/default/image/car.jpg" alt=""><a href="#">Доставка в течении часа</a></div>
        <div class="col-xs-4 banner"><img src="/catalog/view/theme/default/image/akcia.jpg" alt=""><a href="#">Акции</a></div>
    </div>

        </div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>