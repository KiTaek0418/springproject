<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>GT's Project2</title>

    <!-- Bootstrap core CSS -->
    <link href="http://gtportfolio.com/gtportfolio/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!--external css-->
    <link href="http://gtportfolio.com/gtportfolio/resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="http://gtportfolio.com/gtportfolio/resources/assets/css/style.css" rel="stylesheet">
    <link href="http://gtportfolio.com/gtportfolio/resources/assets/css/style-responsive.css" rel="stylesheet">
    
    <script src="http://gtportfolio.com/gtportfolio/resources/plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style type="text/css">
		.list_title {
			width: 145px;
			overflow: hidden;
			text-overflow: ellipsis;
			white-space: nowrap;
		}
	</style>
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="/board/listAll" class="logo"><b>김기택의 홈페이지</b></a>
            <!--logo end-->
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <c:choose>
						<c:when test="${empty memList }">
		                    <li>
								<a class="logout" href="/member/login">로그인</a>
		                    </li>
						</c:when>
						<c:otherwise>
							<li>
								<a class="logout" href="/member/logout">로그 아웃</a>
							</li>
						</c:otherwise>
					</c:choose>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              	<c:if test="${!empty memList }">
              	  <p class="centered"><a href="profile.html"><img src="../resources/image/profleimg.png" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">${memList.name }</h5>
              	</c:if>
              	  	
                  <li class="mt">
                      <a href="/board/profile">
                          <i class="fa fa-edit"></i>
               			  <span>김기택 프로필</span>
                      </a>
                  </li>
                  
        	  	  <li class="sub-menu">
                    <a href="/board/listAll">
                        <i class="fa fa-folder"></i>
                        <span>자유 게시판</span>
                    </a>
               	  </li>
                  
				<c:choose>
					<c:when test="${!empty memList }">
		                <li class="sub-menu">
		                    <a href="/board/register">
		                        <i class="fa fa-edit"></i>
		                        <span>게시글 작성</span>
		                    </a>
		                </li>
		                
	                	<li class="sub-menu">
		                    <a href="javascript:;" >
		                        <i class="fa fa-user"></i>
		                        <span>My Page</span>
		                    </a>
		                    <ul class="sub">
		                        <li><a href="/member/memberinfo">내 정보</a></li>
		                        <li><a href="/member/membermodify">내 정보 수정</a></li>
		                        <li><a href="/member/memberpwchange">비빌번호 변경</a></li>
		                        <li><a href="/member/memberdel">회원 탈퇴</a></li>
		                    </ul>
	                	</li>
	                	
					</c:when>
					<c:otherwise>
		                 <li class="sub-menu">
		                     <a href="/member/signup" >
		                         <i class="fa fa-users"></i>
		                         <span>회원 가입</span>
		                     </a>
		                 </li>
		                 
		                 <li class="sub-menu">
		                     <a href="/member/memberidfind" >
		                         <i class="fa fa-search"></i>
		                         <span>ID/PW 찾기</span>
		                     </a>
		                 </li>
					</c:otherwise>
				</c:choose>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->