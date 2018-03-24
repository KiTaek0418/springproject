<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Profile &mdash; Free Website Template, Free HTML5 Template by freehtml5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href="https://fonts.googleapis.com/css?family=Space+Mono" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
	
	<link rel="stylesheet" href="http://gtportfolio.com/gtportfolio/resources/profile/css/animate.css">
	<link rel="stylesheet" href="http://gtportfolio.com/gtportfolio/resources/profile/css/icomoon.css">
	<link rel="stylesheet" href="http://gtportfolio.com/gtportfolio/resources/profile/css/bootstrap.css">
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
	<link rel="stylesheet" href="http://gtportfolio.com/gtportfolio/resources/profile/css/style.css">
	<script src="http://gtportfolio.com/gtportfolio/resources/profile/js/modernizr-2.6.2.min.js"></script>
	<script async defer
    	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDi5X2DjvMgCAgZacTxAoH7lwYGABdCcTc&callback=initMap">
	</script>
	
	<script type="text/javascript">
      function initMap() {
        var uluru = {lat: 35.1493277, lng: 126.9300925};
/*         var uluru = {lat: 35.15990000, lng: 126.91013150000003}; */
        var map = new google.maps.Map(document.getElementById("map"), {
          zoom: 20,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
      
	</script>
	</head>
	<body>
		
	<div class="fh5co-loader"></div>
	
	<div id="page">	
	<header id="fh5co-header" class="fh5co-cover js-fullheight" role="banner" style="background-image:url(images/cover_bg_3.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<div class="display-t js-fullheight">
						<div class="display-tc js-fullheight animate-box" data-animate-effect="fadeIn">
							<div class="profile-thumb" style="background: url(http://gtportfolio.com/gtportfolio/resources/profile/images/myimg.jpg);"></div>
							<h1><span>기택's HOME</span></h1>
							<h3><span>Web Developer</span></h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div id="fh5co-about" class="animate-box">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>About Me</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-5">
					<ul class="info">
						<li><span class="first-block">Name:</span><span class="second-block">김 기 택</span></li>
						<li><span class="first-block">Phone:</span><span class="second-block">010 9910 5131</span></li>
						<li><span class="first-block">Email:</span><span class="second-block">thishangaepi@naver.com</span></li>
						<li><span class="first-block">Git:</span><span class="second-block">github.com/KiTaek0418/portfolio</span></li>
						<li><span class="first-block">Address:</span><span class="second-block">광주광역시 동구 동명동 3-3</span></li>
					</ul>
				</div>
				<div class="col-md-5">
					<ul class="info">
						<li><span class="first-block">Introduction:</span><span class="second-block">DID(Do it, Done) 들이대</span></li>
					</ul>	
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-resume" class="fh5co-bg-color">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>My Resume</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-md-offset-0">
					<ul class="timeline">
						<li class="timeline-heading text-center animate-box">
							<div><h3>Work Experience</h3></div>
						</li>
						<li class="animate-box timeline-unverted">
							<div class="timeline-badge"><i class="icon-suitcase"></i></div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h3 class="timeline-title">신입 개발자</h3>
									<span class="company">모듀스 앱스 - 2016 - 2017</span>
								</div>
								<div class="timeline-body">
									<p>안드로이드 개발</p>
								</div>
							</div>
						</li>

						<br>
						<li class="timeline-heading text-center animate-box">
							<div><h3>Education</h3></div>
						</li>
						<li class="timeline-inverted animate-box">
							<div class="timeline-badge"><i class="icon-graduation-cap"></i></div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h3 class="timeline-title">JAVA 개발자 교육</h3>
									<span class="company">한국경영원 - 2017 - 2018</span>
								</div>
							</div>
						</li>
						<li class="animate-box timeline-unverted">
							<div class="timeline-badge"><i class="icon-graduation-cap"></i></div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h3 class="timeline-title">JAVA/ANDROID 개발자 교육</h3>
									<span class="company">광주대학교 - 2015 - 2016</span>
								</div>
							</div>
						</li>
						<li class="timeline-inverted animate-box">
							<div class="timeline-badge"><i class="icon-graduation-cap"></i></div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h3 class="timeline-title">대학 졸업</h3>
									<span class="company">송원 대학 - 2005 - 2011</span>
								</div>
								<div class="timeline-body">
								</div>
							</div>
						</li>
			    	</ul>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-skills" class="animate-box">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>Skills</h2>
				</div>
			</div>
			<div class="row row-pb-md">
				<div class="col-md-3 col-sm-6 col-xs-12 text-center">
					<div class="chart" data-percent="60"><span><strong>HTML5</strong>60%</span></div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 text-center">
					<div class="chart" data-percent="60"><span><strong>CSS3</strong>60%</span></div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 text-center">
					<div class="chart" data-percent="70"><span><strong>jQuery</strong>70%</span></div>
				</div>

				<div class="col-md-3 col-sm-6 col-xs-12 text-center">
					<div class="chart" data-percent="65"><span><strong>Oracle</strong>65%</span></div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 text-center">
					<div class="chart" data-percent="67"><span><strong>MyBatis</strong>67%</span></div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 text-center">
					<div class="chart" data-percent="65"><span><strong>Spring</strong>65%</span></div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 text-center">
					<div class="chart" data-percent="62"><span><strong>Ajax</strong>62%</span></div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 text-center">
					<div class="chart" data-percent="75"><span><strong>Java</strong>75%</span></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="progress-wrap">
						<h3><span class="name-left">HTML5/CSS3</span><span class="value-right">60%</span></h3>
						<div class="progress">
						  <div class="progress-bar progress-bar-1 progress-bar-striped active" role="progressbar"
						  aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:60%">
						  </div>
						</div>
					</div>
					<div class="progress-wrap">
						<h3><span class="name-left">Android</span><span class="value-right">70%</span></h3>
						<div class="progress">
						  <div class="progress-bar progress-bar-2 progress-bar-striped active" role="progressbar"
						  aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%">
						  </div>
						</div>
					</div>
					<div class="progress-wrap">
						<h3><span class="name-left">Oracle</span><span class="value-right">65%</span></h3>
						<div class="progress">
						  <div class="progress-bar progress-bar-3 progress-bar-striped active" role="progressbar"
						  aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width:65%">
						  </div>
						</div>
					</div>
					<div class="progress-wrap">
						<h3><span class="name-left">Java</span><span class="value-right">75%</span></h3>
						<div class="progress">
						  <div class="progress-bar progress-bar-4 progress-bar-striped active" role="progressbar"
						  aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:75%">
						  </div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="progress-wrap">
						<h3><span class="name-left">MyBatis</span><span class="value-right">67%</span></h3>
						<div class="progress">
						  <div class="progress-bar progress-bar-5 progress-bar-striped active" role="progressbar"
						  aria-valuenow="67" aria-valuemin="0" aria-valuemax="100" style="width:67%">
						  </div>
						</div>
					</div>
					<div class="progress-wrap">
						<h3><span class="name-left">Ajax</span><span class="value-right">62%</span></h3>
						<div class="progress">
						  <div class="progress-bar progress-bar-striped active" role="progressbar"
						  aria-valuenow="62" aria-valuemin="0" aria-valuemax="100" style="width:62%">
						  </div>
						</div>
					</div>
					<div class="progress-wrap">
						<h3><span class="name-left">Spring</span><span class="value-right">65%</span></h3>
						<div class="progress">
						  <div class="progress-bar progress-bar-1 progress-bar-striped active" role="progressbar"
						  aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width:65%">
						  </div>
						</div>
					</div>
					<div class="progress-wrap">
						<h3><span class="name-left">jQuery</span><span class="value-right">70%</span></h3>
						<div class="progress">
						  <div class="progress-bar progress-bar-3 progress-bar-striped active" role="progressbar"
						  aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:70%">
						  </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-work" class="fh5co-bg-dark">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>Work</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center col-padding animate-box">
					<a href="/board/listAll" class="work" style="background-image: url(http://gtportfolio.com/gtportfolio/resources/profile/images/port_background.jpg);">
						<div class="desc">
							<h3>My PortFolio</h3>
							<span>Web</span>
						</div>
					</a>
				</div>
				<div class="col-md-6 text-center col-padding animate-box">
					<a href="https://itunes.apple.com/us/app/%EA%B0%80%EC%97%B0%ED%91%B8%EB%93%9C/id1201632737?mt=8" class="work" style="background-image: url(http://gtportfolio.com/gtportfolio/resources/profile/images/port_background_IOS.jpg);">
						<div class="desc">
							<h3>가연 푸드</h3>
							<span>IOS</span>
						</div>
					</a>
				</div>
				<div class="col-md-6 text-center col-padding animate-box">
					<a href="https://itunes.apple.com/kr/app/%EA%B1%B4%EB%8B%B4%EC%83%B5/id1198387894?mt=8" class="work" style="background-image: url(http://gtportfolio.com/gtportfolio/resources/profile/images/port_background_IOS.jpg);">
						<div class="desc">
							<h3>건담샵</h3>
							<span>IOS</span>
						</div>
					</a>
				</div>
				<div class="col-md-3 text-center col-padding animate-box">
					<a href="https://play.google.com/store/apps/details?id=com.moduse.gundamshop" class="work" style="background-image: url(http://gtportfolio.com/gtportfolio/resources/profile/images/port_background_ANDROID.jpg);">
						<div class="desc">
							<h3>건담샵</h3>
							<span>Android</span>
						</div>
					</a>
				</div>
				<div class="col-md-3 text-center col-padding animate-box">
					<a href="https://play.google.com/store/apps/details?id=com.moduse.renttalk" class="work" style="background-image: url(http://gtportfolio.com/gtportfolio/resources/profile/images/port_background_ANDROID.jpg);">
						<div class="desc">
							<h3>렌트톡</h3>
							<span>Android</span>
						</div>
					</a>
				</div>
				<div class="col-md-3 text-center col-padding animate-box">
					<a href="https://play.google.com/store/apps/details?id=com.moduse.gayeonfood" class="work" style="background-image: url(http://gtportfolio.com/gtportfolio/resources/profile/images/port_background_ANDROID.jpg);">
						<div class="desc">
							<h3>가연 푸드</h3>
							<span>Android</span>
						</div>
					</a>
				</div>
				<div class="col-md-3 text-center col-padding animate-box">
					<a href="https://play.google.com/store/apps/details?id=com.moduse.smeat" class="work" style="background-image: url(http://gtportfolio.com/gtportfolio/resources/profile/images/port_background_ANDROID.jpg);">
						<div class="desc">
							<h3>에스 미트</h3>
							<span>Android</span>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- 구글 맵 연동 -->
	<div id="map"></div>
	</div>
	
	<div id="fh5co-footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p>&copy; 2018 All Rights Reserved. <br>Designed by <a href="#name" target="_blank">김 기 택</a></p>
				</div>
			</div>
		</div>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up22"></i></a>
	</div>
	
	<script src="http://gtportfolio.com/gtportfolio/resources/profile/js/jquery.min.js"></script>
	<script src="http://gtportfolio.com/gtportfolio/resources/profile/js/jquery.easing.1.3.js"></script>
	<script src="http://gtportfolio.com/gtportfolio/resources/profile/js/bootstrap.min.js"></script>
	<script src="http://gtportfolio.com/gtportfolio/resources/profile/js/jquery.waypoints.min.js"></script>
	<script src="http://gtportfolio.com/gtportfolio/resources/profile/js/jquery.stellar.min.js"></script>
	<script src="http://gtportfolio.com/gtportfolio/resources/profile/js/jquery.easypiechart.min.js"></script>
	<script src="http://gtportfolio.com/gtportfolio/resources/profile/js/main.js"></script>

	</body>
</html>