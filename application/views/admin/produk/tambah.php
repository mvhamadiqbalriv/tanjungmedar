<script src="<?php echo base_url() ?>assets/tinymce/js/tinymce/tinymce.min.js"></script>
<script type="text/javascript">
tinymce.init({
    file_browser_callback: function(field, url, type, win) {
        tinyMCE.activeEditor.windowManager.open({
            file: '<?php echo base_url() ?>assets/kcfinder/browse.php?opener=tinymce4&field=' + field + '&type=' + type,
            title: 'KCFinder',
            width: 700,
            height: 500,
            inline: true,
            close_previous: false
        }, {
            window: win,
            input: field
        });
        return false;
    },
    selector: "#keterangan",
    height: 150,
    plugins: [
        "advlist autolink lists link image charmap print preview anchor",
        "searchreplace visualblocks code fullscreen",
        "insertdatetime media table contextmenu paste"
    ],
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
});
</script>

<?php
// Error
if(isset($error)) {
	echo '<div class="alert alert-warning">';
	echo $error;
	echo '</div>';
}

// Validasi
echo validation_errors('<div class="alert alert-success">','</div>');

// Form
echo form_open_multipart('admin/produk/tambah');
?>

<h2>Tambah Produk</h2>
<div class="col-md-8">
<div class="form-group form-group-lg">
<label>Nama produk</label>
<input type="text" name="nama_produk" placeholder="Nama produk" value="<?php echo set_value('nama_produk') ?>" required class="form-control">
</div>
</div>

<div class="col-md-4">
<div class="form-group form-group-lg">
<label>Status Produk</label>
<select name="status_produk" class="form-control">
	<option value="Publish">Publikasikan</option>
    <option value="Draft">Simpan sebagai Draft</option>
</select>
</div>
</div>

<div class="col-md-4">
<div class="form-group">
<label>Kategori Produk</label>
<select name="id_kategori_produk" class="form-control">
	<?php foreach($kategori as $kategori) { ?>
	<option value="<?php echo $kategori->id_kategori_produk ?>">
	<?php echo $kategori->nama_kategori_produk ?></option>
    <?php } ?>
</select>
</div>
</div>

<div class="col-md-3">
<div class="form-group">
<label>Harga Produk</label>
<input type="number" name="harga" class="form-control" placeholder="Harga produk" value="<?php echo set_value('harga') ?>" required>
</div>
</div>

<div class="col-md-3">
<div class="form-group">
<label>Stok Produk</label>
<input type="number" name="stok" class="form-control" placeholder="Stok produk" value="<?php echo set_value('stok') ?>" required>
</div>
</div>

<div class="col-md-2">
<div class="form-group">
<label>Satuan</label>
<select name="satuan" class="form-control">
	<option value="Unit">Unit</option>
    <option value="Kilogram">Kilogram</option>
    <option value="Ekor">Ekor</option>
    <option value="Meter">Gram</option>
    <option value="Meter">Pcs</option> 
    <option value="Meter">Liter</option>
    <option value="Paket">Paket</option>
</select>
</div>
</div>

<div class="col-md-12">

<div class="form-group">
<label>Upload gambar</label>
<input type="file" name="gambar" class="form-control">
</div>

<div class="form-group">
<label>Keterangan</label>
<textarea name="keterangan" class="form-control" placeholder="Keterangan" id="keterangan"><?php echo set_value('keterangan') ?></textarea>
</div>

<div class="form-group">
<input type="submit" name="submit" value="Simpan Data" class="btn btn-primary btn-lg">
<input type="reset" name="reset" value="Reset" class="btn btn-default btn-lg">
</div>

</div>


<?php echo form_close() ?>

 