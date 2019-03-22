<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header id="header">      
	<div class="container">
    	<div class="row">
        	<div class="col-sm-12 overflow">
            	<div class="social-icons pull-right">
                	<ul class="nav nav-pills">
	                    <li><a href=""><i class="fa fa-facebook"></i></a></li>
	                    <li><a href=""><i class="fa fa-twitter"></i></a></li>
	                    <li><a href=""><i class="fa fa-google-plus"></i></a></li>
	                    <li><a href=""><i class="fa fa-dribbble"></i></a></li>
	                    <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                    </ul>
				</div> 
			</div>
		</div>
	</div>
	
	<div class="navbar navbar-inverse" role="banner">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href="main.jsp">
				<img src="images/uandi.png" alt="logo">
				</a>
    
			</div>
        <div class="collapse navbar-collapse">
                   <ul class="nav navbar-nav navbar-right">
                       <li class="active"><a href="index.jsp">Home</a></li>
                       <li class="dropdown"><a href="#">게시판 <i class="fa fa-angle-down"></i></a>
                           <ul role="menu" class="sub-menu">
                               <li><a href="bbs.jsp">공지사항</a></li>
                               <li><a href="bbs1.jsp">자유게시판</a></li>
                               <li><a href="bbs2.jsp">익명게시판</a></li>
                               <li><a href="bbs3.jsp">자료공유</a></li>
                           </ul>
                       </li>                    
					<li><a href="notyet.jsp">캘린더 </a></li>
					<li><a href="mapApi.jsp">우리맛집</a></li>                         
					<li><a href="notyet.jsp ">주소록</a></li>
					<li><a href="notyet.jsp ">myPage</a></li>                    
				</ul>
			</div>
			<div class="search">
				<form role="form">
					<i class="fa fa-search"></i>
					<div class="field-toggle">
						<input type="text" class="search-form" autocomplete="off" placeholder="Search">
					</div>
                </form>
            </div>
		</div>
	</div>
</header>