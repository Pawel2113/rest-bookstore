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



            <div class="ModulRwdUkryj">




                <h2 class="StrNaglowek">
                    <span>Witamy w sklepie internetowym</span>
                </h2>


                <div class="StrTresc">
                    <div style="text-align: center;"><span style="font-size: 12px;">SERDECZNIE WITAMY W KSIĘGARNI INTERNETOWEJ AMADERO.PL.<br>
                        ZAPRASZAMY DO ZAPOZNANIA SIĘ Z NASZĄ OFERTĄ.<br>
                        <img width="550" height="212" alt="" src="/images/banners/Baner_Niezwykle-Historie-Z-L.jpg"><br>
                        <br>
                    </span></div>
                </div>
            </div>




                <h2 class="StrNaglowek">
                    <span>Nasze hity</span>
                </h2>


            <div class="StrTresc">
                <div class="OknaRwd Kol-2">
                <c:set var="i" value="0"/>
                    <c:forEach items="${bookListPopular}" var="b">
                         <article class="ProduktZlozony OknoRwd"><div class="ProduktZlozony"><div class="Fotografia"><a class="Zoom" href="<c:out value='${b.url}'/>"><img src="${imageListPopular[i].imageAddress}" width="150" height="200" id="fot_48461_1087" class="Zdjecie Reload" alt="<c:out value='${b.title} - ${b.author}'/>" /></a></div><div class="ProdCena" style="margin-left:190px"><h3><a href="<c:out value='${b.url}'/>"> <c:out value='${b.title} - ${b.author}'/></a></h3><span class="Cena"><c:if test="${b.oldPrice > b.price}"><s>${b.oldPrice} zł </s><br></c:if>${b.price} zł</span><div class="Zakup"><input type="text" id="ilosc_48461_1087" value="1" class="InputIlosc" size="4" onchange="SprIlosc(this,1,1)" name="ilosc" /><em>szt.</em> <span class="DoKoszyka" onclick="return DoKoszyka('48461_1087','dodaj',0,1)" title="Dodaj do koszyka ${b.title } - ${b.author }">Do koszyka</span></div></div><div class="cl"></div></div></article>
                    <c:set var="i" value="${i+1}"/>
                    </c:forEach>
                                    </div>
                <div class="cl"></div>
            </div>


            <h2 class="StrNaglowek">
                <span>

                    <a href="https://amadero.pl/promocje.html">Produkty w promocyjnych cenach</a>

                </span>
            </h2>



            <div class="StrTresc">
                <div class="OknaRwd Kol-3">
                <c:set var="i" value="0"/>
                    <c:forEach items="${bookListPromotion}" var="b">

                        <article class="ProduktProsty OknoRwd"><div class="AnimacjaZobacz"><div class="Zobacz"><strong><a href="<c:out value='${b.url}'/>">zobacz szczegóły</a></strong></div><div class="Foto"><a class="Zoom" href="<c:out value='${b.url}'/>"><img src="${imageListPromotion[i].imageAddress }" width="150" height="200" id="fot_35474_1351" class="Zdjecie Reload" alt="<c:out value='${b.title } - ${b.author }'/>" /></a></div><h3><a href="<c:out value='${b.imageId }'/>"><c:out value='${b.title } - ${b.author }'/></a></h3><span class="CenaPromocyjna"><em class="CenaPoprzednia"><s><c:out value='${b.oldPrice }'/> zł</s></em><br><c:out value='${b.price }'/> zł</span></div></article>
                        <c:set var="i" value="${i+1}"/>
                    </c:forEach>
                </div>
                <div class="cl"></div>
            </div>

            <h2 class="StrNaglowek">
                <span>

                    <a href="https://amadero.pl/polecane.html">Polecamy produkty</a>
                </span>
            </h2>

            <div class="StrTresc">
                <div class="OknaRwd Kol-3">
                <c:set var="i" value="0"/>
                    <c:forEach items="${bookListRecommended}" var="b">
                         <article class="ProduktProsty OknoRwd"><div class="AnimacjaZobacz"><div class="Zobacz"><strong><a href="<c:out value='${b.url}'/>">zobacz szczegóły</a></strong></div><div class="Foto"><a class="Zoom" href="<c:out value='${b.url}'/>"><img src="${imageListRecommended[i].imageAddress }" width="150" height="200" id="fot_35474_1351" class="Zdjecie Reload" alt="<c:out value='${b.title } - ${b.author }'/>" /></a></div><h3><a href="<c:out value='${b.imageId }'/>"><c:out value='${b.title } - ${b.author }'/></a></h3><span class="CenaPromocyjna"><em class="CenaPoprzednia"><s><c:out value='${b.oldPrice }'/> zł</s></em><br><c:out value='${b.price }'/> zł</span></div></article>
                         <c:set var="i" value="${i+1}"/>
                    </c:forEach>
                </div>
                <div class="cl"></div>
            </div>



        </div>
    </div>

    <div class="cl"></div>

    <div class="ModulNewsletter"><strong>Newsletter</strong><form action="/" onsubmit="return sprNewsletter(this, 'modul')" method="post" class="cmxform" id="newsletterModul"><p><span>Prześlij nam swój adres e-mail, a my powiadomimy Cię o nowych produktach, najlepszych cenach, promocjach i wyprzedażach.</span><span><input type="text" name="email" id="emailNewsletterModul" value="Twój adres email" /><small><input type="checkbox" name="zgoda_newsletter_marketing_modul" id="zgoda_newsletter_marketing_modul" value="1" /> Wyrażam zgodę na przetwarzanie danych osobowych do celów marketingowych<br /><input type="checkbox" name="zgoda_newsletter_info_handlowa_modul" id="zgoda_newsletter_info_handlowa_modul" value="1" /> Wyrażam zgodę na otrzymywanie informacji handlowych na wskazany przeze mnie adres e-mail</small><span id="BladDanychNewsletterModul" style="text-align:left;margin-left:0px;display:none"><label class="error">Brak zgody na otrzymywanie informacji handlowych oraz przetwarzanie danych osobowych uniemożliwia zapisanie do newslettera</label></span></span><span><input type="submit" id="submitNewsletterModul" class="przyciskWylaczony" value="Zapisz" disabled="disabled" /> &nbsp;<input type="button" id="submitUnsubscribeNewsletterModul" class="przyciskWylaczony" onclick="wypiszNewsletter('newsletterModul')" value="Wypisz"  disabled="disabled" /></span></p></form></div>

</div>

<%@include file="/WEB-INF/incl/footer.app" %>



<div id="RwdWersja"></div>


<a href="${pageContext.request.contextPath}/customers">Użytkowicy</a>

<br><br>

<a href="${pageContext.request.contextPath}/books">książki</a>

<br><br>

<a href="${pageContext.request.contextPath}/purchases">zakupy</a>



</body>
</html>