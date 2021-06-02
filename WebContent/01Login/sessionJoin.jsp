<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s1" tagdir="/WEB-INF/tags/sample#1" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<script type="text/javascript">
    function idCheck(id) { //idCheck(id) 함수는 id중복확인 버튼을 클릭하면 호출되는 함수
        frm = document.regFrm; //버튼을 클릭했을 때 회원가입 폼에 아이디 값이 없으면 경고 메시지가 뜨지만 정상적으로 입력하면
        //ID 중복체크(idCheck.jsp)로 아이디 값과 함께 넘어간다.
        if (id == "") {
            alert("아이디를 입력해 주세요.");
            frm.id.focus();
            return;
        }
        url = "idCheck.jsp?id=" + id;
        window.open(url, "IDCheck", "width=300,height=150");
    }
 
    function zipCheck() //zipCheck()는 우편번호찾기 버튼을 클릭하면 호출되는 함수입니다. 버튼을 클릭하면 우편번호검색
    { //(zipSearch.jsp) 페이지의 새로운 창이 만들어지면서 y라는 check값을 가지고 넘어갑니다.
        url = "zipSearch.jsp?check=n";
        widow.open(url, "ZipCodeSearch", "width=500,height=300,scrollbars=yes");
    }
</script>

<title>회원가입</title>
</head>
<body>
<div class="container">
  <div align="center">
        <br /> <br />
        <form name="regfrm" method="post" action="memberProc.jsp">
            <!--memberProc.jsp파일에 regfrm이라는 폼으로 post방식으로 값을 전달한다. -->
            <table align="center" border="0" cellspacing="0" cellpadding="5">
                <!-- cellspacing는 테이블의 외곽과 셸의 경계면의 두께를 설정, cellpadding는 셸과 내용의 사이를 지정하는 태그 -->
 

                <tr> 
                    <td align="center" valign="middle" >
                        <table border="1" cellspacing="0" cellpadding="2" align="center"
                            width="600"> 
                            <%-- 테이블설정 --%>
                            <tr align="center" ">
                            <%-- 회원가입 테이블 --%>
                                <td colspan="3"><font color="black" size="6"><b>회원 가입</b></font></td>
                            </tr>
 
 
                            <tr>
                                <td width="20%">ID</td>
                                <td width="80%"><input name="id" size="20"> <input
                                    type="button" value="ID중복확인"
                                    onClick="idCheck(this.form.id.value)" class="btn btn-secondary"> </td>
                                <!-- onClick로 입력한 아이디가 중복된 값인지 확인 -->

                            </tr>
 
                            <tr>
                                <td>password</td>
                                <td><input type="password" name="pwd" size="20"></td>

                            </tr>
 
                            <tr>
                                <td>패스워드 확인</td>
                                <td><input type="password" name="repwd" size="20">
                                <br>패스워드를 확인합니다.
                                </td>

                            </tr>
 
                            <tr>
                                <td>이름</td>
                                <td><input name="name" size="20">
                                <br>이름을 적어주세요.</td>
                            </tr>
 
                            <tr>
                                <td>성별</td>
                                <td>남<input type="radio" name="gender" value="1"
                                    checked="checked"> 여<input type="radio" name="gebder"
                                    value="2">
                                    <br>성별을 선택 하세요.
                                    </td>
                                
                            </tr>
 
                            <tr>
                                <td>생년월일</td>
                                <td><input name="birthday" size="20"> ex)000101
                                <br>생년월일을 적어 주세요.</td>
                            </tr>
 
                            <tr>
                                <td>Email</td>
                                <td><input name="email" size="30">
                                <br>이메일을 적어 주세요.</td>
                            </tr>
 
                            <tr>
                                <td>우편번호</td>
                                <td><input name="zipcode" size="5" readonly> <input
                                    type="button" value="우편번호찾기" onClick="zipCheck()" class="btn btn-secondary"> <!-- zipCheck()함수를 사용해 우편번호와 주소를 검색한다. -->
                               <br> 우편번호를 검색하세요.</td>
                            </tr>
 
                            <tr>
                                <td>주소</td>
                                <td><input name="address" size="45">
                                <br> 주소를 적어 주세요.</td>
                            </tr>
 
                            <tr>
                                <td>취미</td>
                                <td>인터넷<input type="checkbox" name="hobby" value="인터넷">
                                    여행<input type="checkbox" name="hobby" value="여행"> 
                                    게임<input type="checkbox" name="hobby" value="게임">
                                    영화<input type="checkbox" name="hobby" value="영화"> 
                                    운동<input type="checkbox" name="hobby" value="운동">
                                    <br>취미를 선택 하세요.</td>
                            </tr>
 
 
                            <tr>
                                <td>직업</td>
                                <td><select name=job>
                                        <option value="0" selected>선택하세요.
                                        <option value="회사원">회사원
                                        <option value="연구전문직">연구전문직
                                        <option value="교수학생">교수학생
                                        <option value="일반자영업">일반자영업
                                        <option value="공무원">공무원
                                        <option value="의료인">의료인
                                        <option value="법조인">법조인
                                        <option value="종교,언론,예술인">종교/언론/예술인
                                        <option value="농,축,수산,광업인">농/축/수산/광업인
                                        <option value="주부">주부
                                        <option value="무직">무직
                                        <option value="기타">기타
                                </select><br>직업을 선택 하세요.</td>
                            </tr>
 
                            <tr>
                                <td colspan="3" align="center">
                                <input type="button" value="Join" onclick="inputCheck()" class="btn btn-primary"> &nbsp; &nbsp; 
                                <input type="reset" value="Reset" class="btn btn-primary"> &nbsp; &nbsp; 
                                <input type="button" value="Login" onClick="location.href='sessionLoginForm.jsp'" class="btn btn-primary"></td>
                            </tr>
 
                        </table>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>