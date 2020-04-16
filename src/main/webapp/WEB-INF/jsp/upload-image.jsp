<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pl">
<head>
</head>
<body>
cos
<img src="/images/odmieniles-moje-zycie.jpg">
<img src="/images/stamperror.jpg">

 <form action="add-image" method="POST" id="rejestracja" modelAttribute="image" enctype="multipart/form-data" >

     <div class="TabelaTbl">

        <div class="RamkaProcent Ramka" style="padding-right:20px">

            <strong class="CheckSekcja">Dane użytkownika</strong>

            <p>
                <span>podaj ścieżkę obrazka: <em class="required"></em></span>
                <input type="text" name="path" style="width:95%" />
            </p>

            </div>

            <div class="cl"></div>

            <br /><br />

            <div style="text-align:center">

                <input type="submit" name="akcja" class="formbutton" id="submitButton"  value="dodaj obrazek"/>

                <div class="cl">&nbsp;</div>

</body>
</html>