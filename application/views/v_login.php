<!doctype html>
<?php
?>
<html lang="en">
  <head>
  <link href="<?=base_url('assetss/')?>images/logo-unpak.png" rel="icon">
  	<title>Universitas Pakuan : Login </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="<?=base_url('assetss/')?>css/style.css">
	<style type="text/css">
		body{
			background: url(<?=base_url('assetss/')?>gg.jpg);
			background-size: cover;
		}

	</style>
	</head>
	<body>
		<section class="ftco-section">
		<div class="container">

			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section"> </h2>
				</div>
			</div>
			
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
                    <link href="<?=base_url('assetss/')?>images/logo-unpak.png" rel="icon">
                    <link href="<?=base_url('assetss/')?>images/apple-touch-icon.png" rel="apple-touch-icon">
		      	<div class="images/logo-unpak.png d-flex align-items-center justify-content-center">
		      		<link href="<?=base_url('assetss/')?>images/logo-unpak.png" rel="icon"></span>
		      	</div>
		      	<h3 class="text-center mb-4">Silahkan Login</h3>
						<form action="<?=site_url('login/login')?>" method="POST" class="login-form">
						<?php echo $this->session->flashdata('msg');?>
		      		<div class="form-group">
		      			<input type="text" class="form-control rounded-left" name="username" id="username" placeholder="Username" required>
		      		</div>
	            <div class="form-group d-flex">
	              <input type="password" id="password" name="password" class="form-control rounded-left" placeholder="Password" required>

	            </div>
	            <div class="form-group">
	            	<button type="submit" class="btn btn-primary rounded submit p-3 px-5">Login</button>
	            </div>
	          </form>
	        </div>
				</div>
			</div>
		</div>
	</section>

	<script src="<?=base_url('assetss/')?>js/jquery.min.js"></script>
  <script src="<?=base_url('assetss/')?>js/popper.js"></script>
  <script src="<?=base_url('assetss/')?>js/bootstrap.min.js"></script>
  <script src="<?=base_url('assetss/')?>js/main.js"></script>

	</body>
</html>

