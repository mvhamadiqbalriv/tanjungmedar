<?php
$nav_produk	= $this->site_model->nav_produk();
$nav_berita	= $this->site_model->nav_berita();
$nav_profil	= $this->site_model->nav_profil();
?>
<!--navigation-->
<div class="top-nav">
<nav class="navbar navbar-default">
<div class="container">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">Menu						
</button>
</div>
<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav">
  <!-- Home -->
  <li class="hvr-bounce-to-bottom"><a href="<?php echo base_url() ?>">HOME</a></li>


  <li class="hvr-bounce-to-bottom"><a href="<?php echo base_url('login') ?>">LOGIN ADMIN</a></li>


     <li class="hvr-bounce-to-bottom"><a href="<?php echo base_url('contact') ?>">KONTAK</a></li>


<!-- PROFIL -->
   <li><a href="#" class="dropdown-toggle hvr-bounce-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">PROFIL<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <?php foreach($nav_profil as $nav_profil) { ?>
          <li><a class="hvr-bounce-to-bottom" href="<?php echo base_url('berita/read/'.$nav_profil->slug_berita) ?>"><?php echo $nav_profil->nama_berita ?></a></li>
        <?php } ?> 
      </ul>
  </li> 
 
 <!-- PROFIL -->
  <li><a href="#" class="dropdown-toggle hvr-bounce-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">UMKM<span class="caret"></span></a>
    
      <ul class="dropdown-menu">
      	<?php foreach($nav_berita as $nav_berita) { ?>
          <li><a class="hvr-bounce-to-bottom" href="<?php echo base_url('berita/kategori/'.$nav_berita->slug_kategori_berita) ?>"><?php echo $nav_berita->nama_kategori_berita ?></a></li>
        <?php } ?> 
      </ul>
  </li>	

 
 <li class="hvr-bounce-to-bottom"><a href="<?php echo base_url('produk') ?>">PRODUK</a></li>
  

</ul>	
<div class="clearfix"> </div>
</div>	
</nav>		
</div>	
<!--//navigation-->
