<?php
$site	= $this->konfigurasi_model->listing();
include('produk.php');
include('berita.php');
?>

<!--main-->
<div class="main">
<div class="container">
	<h3 class="title">VIDEO KEGIATAN</h3>
	&ensp;
<div class="main-grids">

<?php foreach($video as $video) { ?>
<div class="col-md-6 main-left">
    
   <div class="embed-responsive embed-responsive-4by3">
  <iframe src="https://www.youtube.com/embed/<?php echo $video->video ?>" frameborder="0" allowfullscreen></iframe>
   </div>
    
    <h4 class="text-center"><?php echo $video->judul ?></h4>
   
    <p class="text-center">
    	<a href="<?php echo base_url('video') ?>" class="more btn btn-1 btn-1b"> More video...</a>
    </p>
    
</div>
<?php } ?>

<div class="clearfix"> </div>
</div>			
</div>
</div>
<!--//main-->

