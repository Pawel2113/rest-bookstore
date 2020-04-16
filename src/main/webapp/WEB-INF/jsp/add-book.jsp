<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML>
<html lang="pl">
<head>
    <meta charset="utf-8" />
    <title>amadero.pl</title>
    <meta name="keywords" content="księgarnia internetowa, amadero.pl, książka, prezent literatura piękna, dla dzieci, biografie, poradniki, turystyka, podróżnicze, reportaże, multimedia, Pieśni nad pieśniami. Nowy przekład dynamiczny" />
    <meta name="description" content="Witamy w księgarni internetowej amadero.pl. Zapraszamy do zapoznania się z naszą ofertą. Zobacz teraz!" />
    <meta name="robots" content="index,follow" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href="https://fonts.googleapis.com/css?family=Kotta+One&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css" />



    <link rel="stylesheet" type="text/css" href="/css/style.css" />
    <script type="text/javascript">
    function startSearch(pParam){
    	var categoryWord = parseCategory(pParam);
    	var page = 1;
    	window.alert(categoryWord);
    	var searchLink = '${pageContext.request.contextPath}/category/' + categoryWord + '/' + page;
        		window.location.href=searchLink;
    	}
    </script>




</head>


<body style="background:#">
<%@include file="/WEB-INF/incl/menu.app" %>
<div id="Strona">


    <div id="StronaWew">


        <div class="cl"></div>

        <%@include file="/WEB-INF/incl/leftColumn.app" %>

        <div id="SrodekKolumna">


        <form action="adding-book" method="POST" modelAttribute="book" enctype="multipart/form-data" >

            <div class="RamkaProcent Ramka" style="padding-right:20px">

                    <strong class="CheckSekcja">Nowa książka</strong>

                    <p>
                        <span>podaj tytuł książki: <em class="required"></em></span>
                        <input type="text" name="title" style="width:95%" />
                    </p>
                    <p>
                        <span>podaj autora książki: <em class="required"></em></span>
                        <input type="text" name="author" style="width:95%" />
                    </p>

                    <p>
                        <span>podaj cenę: <em class="required"></em></span>
                        <input type="text" name="price" style="width:95%" />
                    </p>

                    <p>
                        <span>podaj kategorię<em class="required"></em></span>
                        <input type="text" name="category" style="width:95%" />
                    </p>

                    <p>
                        <span>podaj podkategorię<em class="required"></em></span>
                        <input type="text" name="subcategory" style="width:95%" />
                    </p>

                    <p>
                        <span>podaj wydawnictwo<em class="required"></em></span>
                        <input type="text" name="publishingHouse" style="width:95%" />
                    </p>

                    <p>
                        <span>podaj rok wydania<em class="required"></em></span>
                        <input type="text" name="year" style="width:95%" />
                    </p>

                    <p>
                        <span>podaj opis<em class="required"></em></span>
                        <input type="text" name="description" style="width:95%" />
                    </p>
                    <p>
                        <span>podaj ścieżkę obrazka: <em class="required"></em></span>
                        <input type="text" name="path" style="width:95%" />
                    </p>
                    </div>

                    <div class="cl"></div>

                    <br /><br />

                    <div style="text-align:center">

                        <input type="submit" name="akcja" class="formbutton" id="submitButton"  value="dodaj książkę"
                        onclick="window.location.href='${pageContext.request.contextPath}/">

                        <div class="cl">&nbsp;</div>

            </div>

        </form>



</body>
</html>