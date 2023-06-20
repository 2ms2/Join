<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="css/common.css">
	</head>
	
	<body>
		<div class="wrap">
			<div class="conts">
				<h2>회원 가입</h2>
				<form action="proc.do">
					<table class="join-table">
						<colgroup>
							<col style="width:20%" />
							<col style="width:80%" />
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">아이디</th>
								<td>
									<input type="text" name="id" placeholder="id를 입력하세요" style="width:70%">						
								</td>
							</tr>
							<tr>
								<th scope="row">비밀번호</th>
								<td>
									<input type="password" name="pass1" style="width:70%">						
								</td>
							</tr>
							<tr>
								<th scope="row">비밀번호 확인</th>
								<td>
									<input type="password" name="pass2" style="width:70%">						
								</td>
							</tr>
							<tr>
								<th scope="row">나이</th>
								<td>
									<input type="radio" name="age" value="10대"><span>10대</span>
									<input type="radio" name="age" value="20대"><span>20대</span>
									<input type="radio" name="age" value="30대"><span>30대</span>
									<input type="radio" name="age" value="40대"><span>40대 이상</span>			
								</td>
							</tr>
							<tr>
								<th scope="row">전화번호</th>
								<td>
									<input type="tel" name="tel" style="width:70%">				
								</td>
							</tr>
							<tr>
								<th scope="row">이메일</th>
								<td>
									<input type="email" name="email" style="width:70%">						
								</td>
							</tr>
							<tr>
								<th scope="row">직업</th> <!-- 1:1로 bean클래스에 매핑되니까(?) bean클래스에 다시 넣어줘야된다. 
																	처리해주는 클래스에서 for문 돌려서 String만든후 setproperty로 넣어주던 해야된다. -->
								<td>
									<select name="job" style="width:30%">
										<option value="학생">학생</option>
										<option value="전문직">전문직</option>
										<option value="기술자">기술자</option>
										<option value="생산직">생산직</option>
										<option value="예술가">예술가</option>
										<option value="기타">기타</option>
									</select>				
								</td>
							</tr>
							<tr>
								<th scope="row">관심분야</th> <!-- 배열로 받지않고 for문 돌려서 String타입으로 빼자  -->
								<td>
									<input type="checkbox" name="hobby" value="캠핑"><span>캠핑</span>
									<input type="checkbox" name="hobby" value="운동"><span>전시회</span>
									<input type="checkbox" name="hobby" value="독서"><span>독서</span>
									<input type="checkbox" name="hobby" value="음악"><span>뮤지컬</span>		
								</td>
							</tr>
							<tr>
								<th scope="row">소개글</th>
								<td>
									<textarea name="info" style="width:70%"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="btn-area">
						<input type="reset" value="취소" class="btn-cancle">			
						<input type="submit" value="회원가입" class="btn-join">
					</div>
				</form>	
			</div>
		</div>
	</body>
</html>