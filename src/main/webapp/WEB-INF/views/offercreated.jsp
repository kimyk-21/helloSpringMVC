<%--
  Created by IntelliJ IDEA.
  User: nykim
  Date: 2025-03-20
  Time: 오후 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--오퍼가 모델에 들어가있음. 그래서 컨트롤러에서 뷰로 넘김. 뷰는 모델에 접근 가능하고, --%>
<%--모델 안에 오퍼가 있으니 그 안의 네임값 가져올 수 있음.--%>
${offer.name} 가 새로운 제안을 하였습니다. 감사합니다. <br/>
<a href="${pageContext.request.contextPath}/offers"> Click here to view current offers  </a>

</body>
</html>
