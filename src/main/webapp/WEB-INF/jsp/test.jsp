<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="pl">
<head>
</head>
<body>
cos
<img src="/images/odmieniles-moje-zycie.jpg">
<img src="/images/stamperror.jpg">

<img src="/images/books/${book.image }">
${book.title } - ${book.author }
${book.price }
<img src="/images/books/${book2.image }">
${book2.title } - ${book2.author }
${book2.price }
<img src="/images/books/${book3.image }">
${book3.title } - ${book2.author }
${book3.price }
</body>
</html>