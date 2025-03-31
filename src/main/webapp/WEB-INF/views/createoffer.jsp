<%--
  Created by IntelliJ IDEA.
  User: nykim
  Date: 2025-03-20
  Time: 오후 7:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%--스프링 폼 태그 추가--%>

<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/main.css" >

  </head>
  <body>

<%--  기존의 form 태그 대신에 스프링 폼 태그 사용--%>
  <sf:form method="post" action="${pageContext.request.contextPath}/docreate"
           modelAttribute="offer"> <%-- 추가 --%>
    <table class="formtable">
      <tr>
        <td class="label"> Name:</td>
<%--        기존의 input 태그 대신에 스프링 폼 태그 사용, name은 path로 변경 --%>
        <td><sf:input class="control" type="text" path="name"/> <br/>
          <sf:errors path="name" class="error"/> <%-- 에러메시지 표시, css파일도 추가 --%>
        </td>
      </tr>
      <tr>
        <td class="label"> Email:</td>
        <td><sf:input class="control" type="text" path="email"/> <br/>
          <sf:errors path="email" class="error"/>
        </td>
      </tr>
      <tr>
        <td class="label"> Offer:</td>
<%--        textarea도 스프링 폼 태그로 변경, name은 path로 변경--%>
        <td><sf:textarea class="control" rows="10" cols="10" path="text"></sf:textarea>  <br/>
           <sf:errors path="text" class="error"/>
        </td>
      </tr>
      <tr>
        <td></td>
<%--        얘는 버튼이라 굳이 바꿀 필요 없음--%>
        <td><input type="submit" value="새 제안"/> </td>
      </tr>
    </table>
  </sf:form>
  
  </body>
</html>
