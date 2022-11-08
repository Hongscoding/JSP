/**
 * 등록하기 화면
 */
 
function lecReg(){
	
	$(function(){
		
		$('#lecReg').empty();
		
		$('#lecReg').append("<h4>강좌등록</h4>");
		$('#lecReg').append("<input type='submit' name='close' value='닫기'/>");
		
		let tags  = "<table border='1'>";
		    tags += "<tr>";
		    tags += "<td>번호</td>";
		    tags += "<td><input type='text' name='lecNo' /></td>";
		    tags += "</tr>";
		    tags += "<tr>";
		    tags += "<td>강좌명</td>";
		    tags += "<td><input type='text' name='lecName' /></td>";
		    tags += "</tr>";
		    tags += "<tr>";
		    tags += "<td>학점</td>";
		    tags += "<td><input type='text' name='lecCredit'/></td>";
		    tags += "</tr>";
		    tags += "<tr>";
		    tags += "<td>시간</td>";
		    tags += "<td><input type='text' name='lecTime'/></td>";
		    tags += "</tr>";
		    tags += "<tr>";			
		    tags += "<td>강의장</td>";		    
		    tags += "<td><input type='text' name='lecClass'/></td>";
		    tags += "</tr>";
		    tags += "<tr>";					    
		    tags += "<td colspan='2' align='right'><input type='submit' name='append' value='추가'/></td>";
		    tags += "</tr>";
		    tags += "</table>";
		
		$('#lecReg').append(tags);
		
		
	});
	
}