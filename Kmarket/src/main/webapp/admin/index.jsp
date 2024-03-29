<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>케이마켓::관리자</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>    
    <script src="./js/gnb.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="./css/admin.css">
</head>
<body>
    <div id="admin-wrapper">
        <header>
            <div>
                <a href="./index.do" class="logo"><img src="./img/admin_logo.png" alt="admin_logo"/></a>
                <p>
                    <span>홍길동님 반갑습니다.</span>
                    <a href="/Kmarket/">HOME |</a>
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
                            <li><a href="./product/list.do">상품목록</a></li>
                            <li><a href="./product/register.do">상품등록</a></li>
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
            <section id="admin-index">
                <nav>
                    <h3>관리자 메인</h3>
                    <p>
                        HOME > <strong>메인</strong>
                    </p>
                </nav>

                <h4>쇼핑몰 운영현황</h4>
                <article>
                    <table>	
                        <tr>
                            <td>
                                <strong>주문건수(건)</strong>
                                <span>120</span>
                            </td>
                            <td>
                                <strong>주문금액(원)</strong>
                                <span>1,130,000</span>
                            </td>
                            <td>
                                <strong>회원가입(명)</strong>
                                <span>1014</span>
                            </td>
                            <td>
                                <strong>쇼핑몰 방문(명)</strong>
                                <span>1014</span>
                            </td>
                            <td>
                                <strong>신규게시물(건)</strong>
                                <span>100</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    <span>PC</span>
                                    <span>60</span>
                                </p>
                                <p>
                                    <span>Mobile</span>
                                    <span>71</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>PC</span>
                                    <span>60</span>
                                </p>
                                <p>
                                    <span>Mobile</span>
                                    <span>71</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>PC</span>
                                    <span>60</span>
                                </p>
                                <p>
                                    <span>Mobile</span>
                                    <span>71</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>PC</span>
                                    <span>60</span>
                                </p>
                                <p>
                                    <span>Mobile</span>
                                    <span>71</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>PC</span>
                                    <span>60</span>
                                </p>
                                <p>
                                    <span>Mobile</span>
                                    <span>71</span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    <span>어제</span>
                                    <span>4</span>
                                </p>
                                <p>
                                    <span>주간</span>
                                    <span>10</span>
                                </p>
                                <p>
                                    <span>월간</span>
                                    <span>30</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>어제</span>
                                    <span>4</span>
                                </p>
                                <p>
                                    <span>주간</span>
                                    <span>10</span>
                                </p>
                                <p>
                                    <span>월간</span>
                                    <span>30</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>어제</span>
                                    <span>4</span>
                                </p>
                                <p>
                                    <span>주간</span>
                                    <span>10</span>
                                </p>
                                <p>
                                    <span>월간</span>
                                    <span>30</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>어제</span>
                                    <span>4</span>
                                </p>
                                <p>
                                    <span>주간</span>
                                    <span>10</span>
                                </p>
                                <p>
                                    <span>월간</span>
                                    <span>30</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>어제</span>
                                    <span>4</span>
                                </p>
                                <p>
                                    <span>주간</span>
                                    <span>10</span>
                                </p>
                                <p>
                                    <span>월간</span>
                                    <span>30</span>
                                </p>
                            </td>		
                        </tr>
                    </table>
                </article>

                <h4>주문 업무현황</h4>
                <article>
                    <table>
                        <tr>
                            <td>
                                <strong>입금대기(건)</strong>
                                <span>100</span>
                            </td>
                            <td>
                                <strong>배송준비(건)</strong>
                                <span>100</span>
                            </td>
                            <td>
                                <strong>취소요청(건)</strong>
                                <span>100</span>
                            </td>
                            <td>
                                <strong>교환요청(건)</strong>
                                <span>100</span>
                            </td>
                            <td>
                                <strong>반품요청(건)</strong>
                                <span>100</span>
                            </td>
                        </tr>
                    </table>                    
                </article>

                <div>
                    <div>
                        <h4>공지사항</h4>
                        <article>
                            <p>
                                <span>[공지] 케이마켓 판매자님들은 주기적인 비밀번호 변경을 하세요.케이마켓 판매자님들은 주기적인 비밀번호 변경을 하세요.</span>
                                <span>20-07-08 12:23</span>
                            </p>
                            <p>
                                <span>[공지] 1주년 기념 신규가입 사은품 안내</span>
                                <span>20-07-08 12:23</span>
                            </p>
                            <p>
                                <span>[공지] 1주년 기념 신규가입 사은품 안내</span>
                                <span>20-07-08 12:23</span>
                            </p>
                            <p>
                                <span>[공지] 1주년 기념 신규가입 사은품 안내</span>
                                <span>20-07-08 12:23</span>
                            </p>
                            <p>
                                <span>[공지] 1주년 기념 신규가입 사은품 안내</span>
                                <span>20-07-08 12:23</span>
                            </p>
                        </article>
                    </div>

                    <div>
                        <h4>고객문의</h4>
                        <article>
                            <p>
                                <span>[문의] 상품이 잘못 왔습니다.</span>
                                <span>20-07-08 12:23</span>
                            </p>
                            <p>
                                <span>[문의] 안녕하세요. 주문자 입니다. 구매한 상품에 문제가 있어서 이렇게 문의글을 남깁니다.</span>
                                <span>20-07-08 12:23</span>
                            </p>
                            <p>
                                <span>[문의] 상품이 1개 잘못 왔습니다.</span>
                                <span>20-07-08 12:23</span>
                            </p>
                            <p>
                                <span>[문의] 상품이 1개 잘못 왔습니다.</span>
                                <span>20-07-08 12:23</span>
                            </p>
                            <p>
                                <span>[문의] 상품이 1개 잘못 왔습니다.</span>
                                <span>20-07-08 12:23</span>
                            </p>                                                                
                        </article>
                    </div>
                </div>
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