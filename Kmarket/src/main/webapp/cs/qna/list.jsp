<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>케이마켓 고객센터</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <div id="wrapper">
        <header>
            <div class="top">
                <div>
                    <p>
                        <a href="#">로그인</a>
                        <a href="#">회원가입</a>
                        <a href="#">마이페이지</a>
                        <a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>장바구니</a>
                    </p>
                </div>
            </div>
            <div class="logo">
                <div>
                    <a href="../index.jsp">
                        <img src="../images/logo.png" alt="로고">
                        고객센터
                    </a>
                </div>
            </div>
        </header>
        <section id="cs">
            <div class="qna">
                <nav>
                    <div>
                        <p>홈<span>></span>문의하기</p>
                    </div>
                </nav>
                <section class="list">
                    <aside>
                        <h2>문의하기</h2>
                        <ul>
                            <li class="on"><a href="#">회원</a></li>
                            <li><a href="#">쿠폰/이벤트</a></li>
                            <li><a href="#">주문/결제</a></li>
                            <li><a href="#">배송</a></li>
                            <li><a href="#">취소/반품/교환</a></li>
                            <li><a href="#">여행/숙박/항공</a></li>
                            <li><a href="#">안전거래</a></li>
                        </ul>
                    </aside>
                    <article>
                        <nav>
                            <h1>회원</h1>
                            <h2>회원관련 문의 내용입니다.</h2>
                        </nav>
                        <table>
                        <c:forEach var="article" items="${articles}">
                            <tr>
                                <td><a href="./view.jsp">[${aritcle.qc2Name}] ${article.qnaTitle}</a></td>
                                <td>${article.uid}</td>
                                <td>${article.wdate.substring(2, 10)}</td>
                            </tr>
                        </c:forEach>
                        </table>
                        <div class="page">
                            <a href="#" class="prev">이전</a>
                            <a href="#" class="num on">1</a>
                            <a href="#" class="num">2</a>
                            <a href="#" class="num">3</a>
                            <a href="#" class="next">다음</a>
                        </div>
                        <a href="./write.jsp" class="btnWrite">문의하기</a>
                    </article>
                </section>
            </div>
      </section>
      <footer>
        <ul>
          <li><a href="#">회사소개</a></li>
          <li><a href="#">서비스이용약관</a></li>
          <li><a href="#">개인정보처리방침</a></li>
          <li><a href="#">전자금융거래약관</a></li>
        </ul>
        <div>
          <p><img src="../images/footer_logo.png" alt="로고" /></p>
          <p>
            <strong>(주)KMARKET</strong><br />
            부산시 강남구 테헤란로 152 (역삼동 강남파이낸스센터)<br />
            대표이사 : 홍길동<br />
            사업자등록번호 : 220-81-83676 사업자정보확인<br />
            통신판매업신고 : 강남 10630호 Fax : 02-589-8842
          </p>
          <p>
            <strong>고객센터</strong><br />
            Tel : 1234-5678 (평일 09:00~18:00)<br />
            스마일클럽/SVIP 전용 : 1522-5700 (365일 09:00~18:00)<br />
            경기도 부천시 원미구 부일로 223(상동) 투나빌딩 6층<br />
            Fax : 051-123-4567 | Mail : kmarket@kmarket.co.kr<br />
          </p>
        </div>
      </footer>
    </div>
</body>
</html>