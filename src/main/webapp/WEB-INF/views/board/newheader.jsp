<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sct"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>DASHGUM - Bootstrap Admin Template</title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!--external css-->
    <link href="../resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="../resources/assets/css/style.css" rel="stylesheet">
    <link href="../resources/assets/css/style-responsive.css" rel="stylesheet">

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
            <a href="/board/listAll" class="logo"><b>DASHGUM FREE</b></a>
            <!--logo end-->
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="login.html">Logout</a></li>
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
              
              	  <p class="centered"><a href="profile.html"><img src="../resources/image/zipimg.png" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">Marcel Newman</h5>
              	  	
                  <li class="mt">
                      <a href="index.html">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>UI Elements</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="general.html">General</a></li>
                          <li><a  href="buttons.html">Buttons</a></li>
                          <li><a  href="panels.html">Panels</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Components</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="calendar.html">Calendar</a></li>
                          <li><a  href="gallery.html">Gallery</a></li>
                          <li><a  href="todo_list.html">Todo List</a></li>
                      </ul>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
        <section class="wrapper">
       		<h3><i class="fa fa-angle-right"></i> Responsive Table Examples</h3>

			<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-body">
					<c:choose>
						<c:when test="${empty memList }">
							<a href="/member/login"><button class="btn btn-primary">로그인</button></a>
							<a style="margin-left: 30px;" href="/member/signup"><button
									class="btn btn-primary">회원 가입</button></a>
							<a href="/member/membersearch"><button
									class="btn btn-primary">ID/PW 찾기</button></a>
							<a href="/board/newheader"><button class="btn btn-primary">새로운 헤더</button></a>
						</c:when>
						<c:otherwise>
							<span>${memList.id} 님 반갑습니다.</span>
							<span> <a href="/member/memberinfo"><button
										class="btn btn-primary">MY PAGE</button></a>
							</span>
							<a href="/member/logout" style="float: right;"><button
									class="btn btn-primary">로그 아웃</button></a>
							<br>
							<a href="/board/register"><button class="btn btn-primary">글쓰기</button></a>
						</c:otherwise>
					</c:choose>
					<%-- <sct:authorize access="hasRole('ROLE_USER')">
						<span><sct:authentication property="principal.UserRealName"/> 님 반갑습니다.</span>
						<span>
							<a href="/member/memberinfo"><button class="btn btn-primary">MY PAGE</button></a>
						</span>
						<a href="/member/logout" style="float: right;"><button class="btn btn-primary">로그 아웃</button></a><br>
						<a href="/board/register"><button class="btn btn-primary">글쓰기</button></a>
					</sct:authorize>
					<sct:authorize access="isAnonymous()">
						<a href="/member/login"><button class="btn btn-primary">로그인</button></a>
						<a style="margin-left: 30px;" href="/member/signup"><button class="btn btn-primary">회원 가입</button></a>
						<a href="/member/membersearch"><button class="btn btn-primary">ID/PW 찾기</button></a>
					</sct:authorize> --%>
				</div>
				<div class="box-header box-title">
					<div id="filter-panel" class="filter-panel">
						<div class="panel-body">
							<form class="form-inline" role="form" action="/board/listAll">
								<div class="form-group">
									<input type="hidden" value="${seaDto.page }"> <input
										type="hidden" value="${seaDto.perPageNum }"> <input
										type="hidden" value="${seaDto.page }"> <input
										type="hidden" value="${seaDto.perPageNum }"> <select
										id="pref-perpage" class="form-control" name="searchType">
										<option value="option"
											<c:out value="${seaDto.searchType eq 'option'? 'selected' : ''}"/>>---
											검색 옵션 ---</option>
										<option value="writer"
											<c:out value="${seaDto.searchType eq 'writer'? 'selected' : ''}"/>>작성자</option>
										<option value="content"
											<c:out value="${seaDto.searchType eq 'content'? 'content' : ''}"/>>내용</option>
										<option value="title"
											<c:out value="${seaDto.searchType eq 'title'? 'selected' : ''}"/>>제목</option>
										<option value="multi"
											<c:out value="${seaDto.searchType eq 'multi'? 'selected' : ''}"/>>제목
											+ 내용</option>
									</select>
								</div>
								<div class="form-group">
									<label class="filter-col" style="margin-right: 0;"
										for="pref-search">Search:</label> <input type="text"
										class="form-control input-sm" id="pref-search" size="50"
										name="searchContent" value="${seaDto.searchContent}">
									<button class="btn btn-primary" type="submit" id="searchBtn">
										<span class=" glyphicon glyphicon-search"></span>
									</button>
								</div>
								<div class="form-group">
									<label class="filter-col" style="margin-right: 0;"
										for="pref-orderby">List Count :</label> <select
										id="pref-orderby" class="form-control"
										onchange="location.href=this.value">
										<option
											value="listAll?pagenum=10&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"
											<c:out value="${PerPageNum eq 10? 'selected' : ''}"/>>---
											보기 옵션 ---</option>
										<option
											value="listAll?pagenum=30&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"
											<c:out value="${PerPageNum eq 30? 'selected' : ''}"/>>30개</option>
										<option
											value="listAll?pagenum=50&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"
											<c:out value="${PerPageNum eq 50? 'selected' : ''}"/>>50개</option>
										<option
											value="listAll?pagenum=100&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"
											<c:out value="${PerPageNum eq 100? 'selected' : ''}"/>>100개</option>
									</select>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="box-body">
					<table class="table table-bordered" id="memList">
						<tr>
							<th style="width: 10px;">BNO</th>
							<th>TITLE</th>
							<th>WRITER</th>
							<th>REGDATE</th>
							<th style="width: 40px;">VIEWCNT</th>
						</tr>
						<c:choose>
							<c:when test="${searchList.size() eq 0 }">
								<tr>
									<td><h1>해당 결과가 없습니다.</h1></td>
								</tr>
							</c:when>

							<c:otherwise>
								<c:forEach items="${searchList }" var="criList">
									<tr>
										<td>${criList.bno }</td>
										<td
											style="padding-left: <c:out value="${criList.depth > 0? 40*criList.depth : ''}"/>px;">
											<c:choose>
												<c:when test="${criList.depth > 0}">
													<img alt="리플 이미지" src="../resources/image/replyimg.png"
														style="width: 26px; height: 18px;">
													<a
														href="/board/detailpage?bno=${criList.bno }&user=${memList.id }">${criList.title }</a>
													<c:if test="${criList.filesize > 0 }">
														<img alt="이미지 체크" src="../resources/image/imgchk.png"
															style="width: 20px; height: 14px;">
													</c:if>
												</c:when>
												<c:otherwise>
													<a
														href="/board/detailpage?bno=${criList.bno }&user=${memList.id }&filename=${criList.filename}">${criList.title }</a>
													<%-- <a href="/board/detailpage?bno=${criList.bno }&user=${memList.id }">${criList.title }</a> --%>
													<c:if test="${criList.filesize > 0 }">
														<img alt="이미지 체크" src="../resources/image/imgchk.png"
															style="width: 20px; height: 14px;">
													</c:if>
												</c:otherwise>
											</c:choose>
										</td>
										<td>${criList.writer }</td>
										<td><fmt:formatDate value="${criList.regdate}"
												pattern="yyyy-MM-dd HH:mm:ss" /></td>
										<td><span class="badge bg-ref">${criList.viewcnt }</span></td>
									</tr>
								</c:forEach>
					</table>
					<div style="width: 800px; margin: 0px auto;">
						<ul class="pagination">
							<li><c:if test="${pagDto.prev }">
									<a
										href="/board/listAll?page=${pagDto.startPage -10}&pagenum=${PerPageNum}&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"><span
										class="glyphicon glyphicon-chevron-left"></span></a>
								</c:if></li>
							<c:forEach var="i" begin="${pagDto.startPage }"
								end="${pagDto.endPage }">
								<c:choose>
									<c:when test="${seaDto.page eq i}">
										<li class="active"><a
											href="/board/listAll?page=${i}&pagenum=${PerPageNum}&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"
											class="pageCnt">${i }</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="/board/listAll?page=${i}&pagenum=${PerPageNum}&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"
											class="pageCnt">${i }</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<%-- <c:forEach var="i" begin="${pagDto.startPage }" end="${pagDto.endPage }">
											<li class="active">
												<a href="/board/listAll?page=${i}&pagenum=${PerPageNum}&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}" class="pageCnt">${i }</a>
											</li>
										</c:forEach> --%>
							<li><c:if test="${pagDto.next }">
									<a href="/board/listAll?page=${pagDto.endPage +1}&pagenum=${PerPageNum}&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}">
									<span class="glyphicon glyphicon-chevron-right"></span></a>
								</c:if></li>
						</ul>
					</div>
					</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>

		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2018 - 김기택
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="../resources/assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="../resources/assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="../resources/assets/js/jquery.scrollTo.min.js"></script>
    <script src="../resources/assets/js/jquery.nicescroll.js" type="text/javascript"></script>

    <!--common script for all pages-->
    <script src="../resources/assets/js/common-scripts.js"></script>

    <!--script for this page-->
    

  </body>
</html>