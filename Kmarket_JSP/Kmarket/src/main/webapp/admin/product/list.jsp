<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>케이마켓::관리자</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>    
    <script src="../js/gnb.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="../css/admin.css">
    <style>
        .searchbtn {
            position: absolute;
            left: 710px;
            height: 33px;
        }
    </style>
</head>
<body>
    <div id="admin-wrapper">
        <header>
            <div>
                <a href="../index.html" class="logo">
                    <img src="../img/admin_logo.png" alt="admin_logo">
                </a>
                <p>
                    <span>홍길동님 반갑습니다.</span>
                    <a href="#">HOME |</a>
                    <a href="#">로그아웃 |</a>
                    <a href="#">고객센터</a> 
                </p>
            </div>
        </header>

        <main>
            <aside>
                <!-- Global Navigation Bar -->
                <ul id="gnb">
                    <li>
                        <a href="#"><i class="fa fa-cogs" aria-hidden="true"></i>환경설정</a>
                        <ol>
                            <li><a href="#">기본환경설정</a></li>
                            <li><a href="#">배너관리</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-store" aria-hidden="true"></i>상점관리</a>
                        <ol>
                            <li><a href="#">판매자현황</a></li>
                            <li><a href="#">재고관리</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-users" aria-hidden="true"></i>회원관리</a>
                        <ol>
                            <li><a href="#">회원현황</a></li>
                            <li><a href="#">포인트관리</a></li>
                            <li><a href="#">비회원관리</a></li>
                            <li><a href="#">접속자집계</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-box-open" aria-hidden="true"></i>상품관리</a>
                        <ol>
                            <li><a href="/Kmarket/admin/product/list.do">상품현황</a></li>
                            <li><a href="/Kmarket/admin/product/register.do">상품등록</a></li>
                            <li><a href="#">재고관리</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-credit-card" aria-hidden="true"></i>주문관리</a>
                        <ol>
                            <li><a href="#">주문현황</a></li>
                            <li><a href="#">매출현황</a></li>
                            <li><a href="#">결제관리</a></li>
                            <li><a href="#">배송관리</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>게시판관리</a>
                        <ol>
                            <li><a href="#">게시판현황</a></li>
                            <li><a href="#">고객문의</a></li>
                        </ol>
                    </li>
                </ul>
            </aside>
            
            <section id="admin-product-list">
                <nav>
                    <h3>상품목록</h3>
                    <p>
                        HOME > 상품관리 > <strong>상품목록</strong>
                    </p>
                </nav>

                <section>
                    <div>
                        <select name="search">
                            <option value="serch1">상품명</option>
                            <option value="serch1">상품코드</option>
                            <option value="serch1">제조사</option>
                            <option value="serch1">판매자</option>
                        </select>
                        <input type="text" name="search" class="searchbtn">
                    </div>
					<input type="hidden" id="prodNo">
                    <table>
                        <tr>
                            <th><input type="checkbox" name="all"></th>
                            <th>이미지</th>
                            <th>상품코드</th>
                            <th>상품명</th>
                            <th>판매가격</th>
                            <th>할인율</th>
                            <th>포인트</th>
                            <th>재고</th>
                            <th>판매자</th>
                            <th>조회</th>
                            <th>관리</th>
                        </tr>
                        <c:forEach items="${products}" var="vo">
                        <tr>
                            <td><input type="checkbox" name="상품코드"></td>
                            <td><img src="http://13.125.215.198:8080/file/${vo.thumb1}" class="thumb"></td>
                            <td>201603292</td>
                            <td>${vo.prodName}</td>
                            <td>${vo.price}</td>
                            <td>${vo.discount}</td>
                            <td>${vo.point}</td>
                            <td>${vo.stock}</td>
                            <td>${vo.seller}</td>
                            <td>${vo.hit}</td>
                            <td>
                                <a href="#">[삭제]</a>
                                <a href="#" class="modifyProdBtn" data-no= "${vo.prodNo}">[수정]</a>
                            </td>
                        </tr>
						</c:forEach>
						
                    </table>
					
                    <input type="button" value="선택삭제">

                    <div class="paging">
                        <span class="prev">
                            <a href="#">&nbsp;이전</a>
                        </span>
                        <span class="num">
                            <a href="#" class="on">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#">4</a>
                            <a href="#">5</a>
                            <a href="#">6</a>
                            <a href="#">7</a>
                        </span>
                        <span class="next">
                            <a href="#">다음&nbsp;</a>
                        </span>
                    </div>
                </section>

                <p class="ico info">
                    <strong>Tip!</strong> 전자상거래 등에서의 상품 등의 정보제공에 관한 고시에 따라 총 35개 상품군에 대해 상품 특성 등을 양식에 따라 입력할 수 있습니다.
                </p>
            </section>
        </main>

        <footer>
            <div>
                <p>Copyright ©kmarket.co.kr All rights reserved. KMARKET ADMINISTRATOR Version 5.4.1.2</p>
            </div>
        </footer>
    </div>
</body>
</html>