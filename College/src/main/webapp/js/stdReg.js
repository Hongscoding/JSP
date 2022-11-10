/**
 * 등록하기 화면
 */
 
function lecReg(){
	
	$(function(){
		
		$('#lecReg').empty();
		
		$('#lecReg').append("<h4>학생등록</h4>");
		$('#lecReg').append("<input type='submit' name='close' value='닫기'/>");
		
		let tags  = "<table border='1'>";
		    tags += "<tr>";
		    tags += "<td>학번</td>";
		    tags += "<td><input type='text' name='stdNo' /></td>";
		    tags += "</tr>";
		    tags += "<tr>";
		    tags += "<td>이름</td>";
		    tags += "<td><input type='text' name='stdName' /></td>";
		    tags += "</tr>";
		    tags += "<tr>";
		    tags += "<td>휴대폰</td>";
		    tags += "<td><input type='text' name='stdHp'/></td>";
		    tags += "</tr>";
		    tags += "<tr>";
		    //tags += "<td>학년</td>";
		    //tags += "<td><select name='stdGrade'>;
		    //tags += " <option value="1학년"selected="selected">1학년</option>";
		    //tags += " <option value="2학년">2학년</option>";
		    //tags += " <option value="3학년">3학년</option>";
		    tags += "</select></td>";
		    tags += "</tr>";
		    tags += "<tr>";			
		    tags += "<td>주소</td>";		    
		    tags += "<td><input type='text' name='stdAddr'/></td>";
		    tags += "</tr>";
		    tags += "<tr>";					    
		    tags += "<td colspan='2' align='right'><input type='submit' name='append' value='추가'/></td>";
		    tags += "</tr>";
		    tags += "</table>";
		
		$('#lecReg').append(tags);
		
		
	});
	
}