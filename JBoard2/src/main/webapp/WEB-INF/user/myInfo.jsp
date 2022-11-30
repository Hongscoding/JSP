<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="./_header.jsp"/>
<script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/JBoard2/js/postcode.js"></script>
<script src="/JBoard2/js/validation.js"></script>
<script>
	$(function(){
		//비밀번호 수정
		$('.bntPassModi').click(function(){
			let uid   = $('.uid').text();
			let pass1 = $('input[name=pass1]').val();
			let pass2 = $('input[name=pass2]').val();
			
			let jsonData = {
				"uid":uid,
				"pass":pass2
			};
			if(pass1&&pass2 !=null){
				$.ajax({
					url: '/JBoard2/user/myInfo.do',
					method: 'post',
					data: jsonData,
					dataType:'json',
					success:function(data){
						console.log(data);
						if(data.result > 0){
							alert('새로운 비밀번호로 변경되었습니다.');
						}
					}
				});
			}else{
				alert('기존 비밀번호를 유지 합니다.');
			}
		});
		//회원 탈퇴
		$('.btnOut').click(function(e){
			e.preventDefault();
		});
	});
</script>
<main id="user">
    <section class="register">
        <form action="/JBoard2/user/myInfo.do" method="post">
            <table border="1">
                <caption>회원정보 설정</caption>
                <tr>
                    <td>아이디</td>
                    <td class="uid">${vo.uid}</td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td>
                    	<input type="password" name="pass1" placeholder="비밀번호 입력"/>
                    	<span class="resultPass"></span>
                    </td>
                </tr>
                <tr>
                    <td>비밀번호 확인</td>
                    <td>
                    	<input type="password" name="pass2" placeholder="비밀번호 입력 확인"/>
                    	<button type="button" class="btn bntPassModi">비밀번호 수정</button>
                    </td>
                </tr>
                <tr>
                    <td>회원가입일</td>
                    <td>${vo.rdate}</td>
                </tr>
            </table>
            
            <table border="1">
                <caption>개인정보 수정</caption>
                <tr>
                    <td>이름</td>
                    <td>
                        <input type="text" name="name" value="${vo.name}" placeholder="이름 입력"/>
                        <span class="resultName"></span>     
                    </td>
                </tr>
                <tr>
                    <td>별명</td>
                    <td>
                        <p class="nickInfo">공백없는 한글, 영문, 숫자 입력</p>
                        <input type="text" name="nick" value="${vo.nick}" placeholder="별명 입력"/>
                        <button type="button" id="btnNickCheck"><img src="../img/chk_id.gif" alt="중복확인"/></button>
                        <span class="resultNick"></span>
                    </td>
                </tr>
                <tr>
                    <td>이메일</td>
                    <td>
                        <input type="email" name="email" value="${vo.email}" placeholder="이메일 입력"/>
                        <span class="resultEmail"></span>
                        <button type="button" id="btnEmail"><img src="../img/chk_auth.gif" alt="인증번호 받기"/></button>
                        <div class="auth">
                            <input type="text" name="auth" placeholder="인증번호 입력"/>
                            <button type="button" id="btnEmailConfirm"><img src="../img/chk_confirm.gif" alt="확인"/></button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>휴대폰</td>
                    <td>
                    	<input type="text" name="hp" value="${vo.hp}" placeholder="휴대폰 입력"/>
                    	<span class="resultHp"></span>
                    </td>
                </tr>
                <tr>
	                <td>주소</td>
	                <td>
	                    <input type="text" name="zip" id="zip" value="${vo.zip}" placeholder="우편번호 검색" readonly/>
	                    <button type="button" onclick="postcode()"><img src="/JBoard2/img/chk_post.gif" alt="우편번호 찾기"/></button>
	                    <input type="text" name="addr1" id="addr1" value="${vo.addr1}" placeholder="기본주소 검색" readonly/>
	                    <input type="text" name="addr2" id="addr2" value="${vo.addr2}" placeholder="상세주소 입력"/>
	                </td>
	            </tr>
	            <tr>
	            	<td>회원탈퇴</td>
	            	<td>
	            		<button type="button" class="btn btnOut" style="padding:6px; background: #ed2f2f; color: #fff;">회원탈퇴</button>
	            	</td>
	            </tr>
            </table>
            <div>
                <a href="/JBoard2/list.do" class="btn btnCancel">취소</a>
                <input type="submit" value="회원수정" class="btn btnRegister"/>
            </div>
        </form>
    </section>
</main>
<jsp:include page="./_footer.jsp"/>