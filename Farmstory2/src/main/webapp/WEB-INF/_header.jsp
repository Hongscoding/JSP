<%@page import="kr.co.farmstory2.vo.UserVO"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	request.setCharacterEncoding("UTF-8");
	String success = request.getParameter("success");
	
	UserVO sessUser = (UserVO) session.getAttribute("sessUser");
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리</title>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"/>
    <link rel="stylesheet" href="/Farmstory2/css/style.css"/>
    <link rel="stylesheet" href="/Farmstory2/css/user.css"/>
    <link rel="stylesheet" href="/Farmstory2/css/board.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>    
    <script>
        $(function(){
            $('.slider > ul').bxSlider({
                slideWidth: 980,
                pager: false,
                controls: false,
                auto: true
            });

            $('#tabs').tabs();
        });
        
		let success = "<%= success %>";
        
        if(success == '100'){
        	alert('일치하는 회원이 없습니다.\n아이디, 비밀번호를 다시 확인하세요');
        }else if(success == '101'){
        	alert('먼저 로그인 하세요');
        }
    </script>

</head>
<body>
    <div id="wrapper">
        <header>
            <a href="/Farmstory2/" class="logo"><img src="/Farmstory2/img/logo.png" alt="로고"/></a>
            <p>
                <a href="#">HOME |</a>
                <% if(sessUser == null){ %>
                <a href="/Farmstory2/user/login.do">로그인 |</a>
                <a href="/Farmstory2/user/terms.do">회원가입 |</a>
                <% }else{ %>
                <a href="/Farmstory2/user/logout.do">로그아웃</a>
                <% } %>
                <a href="#">고객센터</a>
            </p>
            <img src="/Farmstory2/img/head_txt_img.png" alt="3만원 이상 무료배송"/>
            
            <ul class="gnb">
                <li><a href="/Farmstory2/introduction/hello.do">팜스토리소개</a></li>
                <li><a href="/Farmstory2/board/list.do?group=market&cate=market"><img src="/Farmstory2/img/head_menu_badge.png" alt="30%"/>장보기</a></li>
                <li><a href="/Farmstory2/board/list.do?group=croptalk&cate=story">농작물이야기</a></li>
                <li><a href="/Farmstory2/board/list.do?group=event&cate=event">이벤트</a></li>
                <li><a href="/Farmstory2/board/list.do?group=community&cate=notice">커뮤니티</a></li>
            </ul>
        </header>