<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Operator(연산자)</title>
</head>
<body>
<img src="el기본객체.png"><br><hr>
${"(1) 리터럴" }<br>
<%-- \ : 그냥 출력 | ${hello. } : 계산된 값 출력 --%>
\${"hello." } => ${"hello." }<br>
\${123 } => ${123 }<br>
\${null } => ${null }<br><hr>

${"(2) 산술식" }<br>
\${10+20 } => ${10+20 }<br>
\${123 == 123 } => ${123 == 123 }<br>
\${true && false } => ${true && false }<br>
\${2+5 == 7 ? 7:10 } => ${2+5 == 7 ? 7:10 }<br>
</body>
</html>