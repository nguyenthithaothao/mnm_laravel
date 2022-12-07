@extends('master')
@section('content')
<style>
	.brandLi{
		padding: 10px;
	}
	.brandLi b { font-size: 16px; color: #FE980F; }
</style>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.9&appId=328424237576689";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


	 <div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		
	    		<div class="col-sm-12">  

					<h2 class="title text-center">LIÊN HỆ <strong>CHÚNG TÔI</strong></h2>    			    				    							
					
						 		
			</div>    	
    		<div class="row">  	
	    		<div class="col-sm-8">
	    			<div class="contact-form">
	    				<h2 class="title text-center">Liên lạc</h2>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	<form  action="{{route('lien-he')}}" method="post" class="contact-form" id="main-contact-form" class="contact-form row" name="contact-form" method="post">
				    	<input type="hidden" name="_token" value="{{csrf_token()}}">
				            <div class="form-group col-md-6">
				                <input type="text" name="name" class="form-control" placeholder="Họ tên" required="required" value="">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="email" name="email" class="form-control" placeholder="Email" required="required" value="">
				            </div>
				            <div class="form-group col-md-12">
				                <input type="text" name="subject" class="form-control" required="required" placeholder="Tiêu đề">
				            </div>
				            <div class="form-group col-md-12">
				                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Nội dung liên lạc"></textarea>
				            </div>                        
				            <div class="form-group col-md-12">
				                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Gửi">
				            </div>
				        </form>
	    			</div>
	    		</div>
	    		<div class="col-sm-4">
	    			<div class="contact-info">
	    				<h2 class="title text-center">THÔNG TIN LIÊN HỆ</h2>
	    				<address>
	    					<p>Website trực tuyến bán đồ dùng học tập</p>
							<p>Mai Dịch, Cầu Giấy, Hà Nội</p>
							<p></p>
							<p>Di Động: 0222.3345.6677</p>
							<p></p>
							<p>Email: websitebandodunghoctap@gmail.com</p>
	    				</address>
	    				<div class="social-networks">
	    					 <div class="fb-page" data-href="https://www.facebook.com/Tu%E1%BA%A5n-Th%E1%BA%AFng-Bakery-307549689685452/" data-tabs="timeline" data-width="270" data-height="600" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/Tu%E1%BA%A5n-Th%E1%BA%AFng-Bakery-307549689685452/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Tu%E1%BA%A5n-Th%E1%BA%AFng-Bakery-307549689685452/">Website trực tuyến bán đồ dùng học tập</a></blockquote>
                              </div>
	    				</div>
	    			</div>
    			</div>    			
	    	</div>  
    	</div>	
    </div><!--/#contact-page-->
@endsection