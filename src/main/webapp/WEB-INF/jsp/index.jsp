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
                    <article class="ProduktZlozony OknoRwd"><div class="ProduktZlozony"><div class="Fotografia"><a class="Zoom" href="/${book.url }"><img src="/images/books/${book.image }" width="150" height="200" id="fot_48461_1087" class="Zdjecie Reload" alt="${book.title } - ${book.author }" /></a></div><div class="ProdCena" style="margin-left:190px"><h3><a href="/${book.url }">${book.title } - ${book.author }</a></h3><span class="Cena"><c:if test="${book.oldPrice > book.price }"><s>${book.oldPrice } zł </s><br></c:if>${book.price } zł</span><div class="Zakup"><input type="text" id="ilosc_48461_1087" value="1" class="InputIlosc" size="4" onchange="SprIlosc(this,1,1)" name="ilosc" /><em>szt.</em> <span class="DoKoszyka" onclick="return DoKoszyka('48461_1087','dodaj',0,1)" title="Dodaj do koszyka ${book.title } - ${book.author }">Do koszyka</span></div></div><div class="cl"></div></div></article>
                    <article class="ProduktZlozony OknoRwd"><div class="ProduktZlozony"><div class="Fotografia"><a class="Zoom" href="/${book2.url }"><img src="/images/books/${book2.image }" width="150" height="200" id="fot_24832_1136" class="Zdjecie Reload" alt="${book2.title } - ${book2.author }" /></a></div><div class="ProdCena" style="margin-left:190px"><h3><a href="/${book2.url }">${book2.title } - ${book2.author }</a></h3><span class="Cena"><c:if test="${book2.oldPrice > book2.price }"><s>${book2.oldPrice } zł </s><br></c:if>${book2.price } zł</span><div class="Zakup"><input type="text" id="ilosc_24832_1136" value="1" class="InputIlosc" size="4" onchange="SprIlosc(this,1,1)" name="ilosc" /><em>szt.</em> <span class="DoKoszyka" onclick="return DoKoszyka('24832_1136','dodaj',0,1)" title="Dodaj do koszyka ${book2.title } - ${book2.author }">Do koszyka</span></div></div><div class="cl"></div></div></article>
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
                    <article class="ProduktProsty OknoRwd"><div class="AnimacjaZobacz"><div class="Zobacz"><strong><a href="/${book3.url }">zobacz szczegóły</a></strong></div><div class="Foto"><a class="Zoom" href="/${book3.url }"><img src="/images/books/${book3.image }" width="150" height="200" id="fot_35474_1351" class="Zdjecie Reload" alt="${book3.title } - ${book3.author }" /></a></div><h3><a href="/${book3.url }">${book3.title } - ${book3.author }</a></h3><span class="CenaPromocyjna"><em class="CenaPoprzednia"><s>${book3.oldPrice } zł</s></em><br>${book3.price } zł</span></div></article>
                    <article class="ProduktProsty OknoRwd"><div class="AnimacjaZobacz"><div class="Zobacz"><strong><a href="/${book4.url }">zobacz szczegóły</a></strong></div><div class="Foto"><a class="Zoom" href="/${book4.url }"><img src="/images/books/${book4.image }" width="150" height="200" id="fot_55316_1414" class="Zdjecie Reload" alt="${book4.title } - ${book4.author }" /></a></div><h3><a href="/${book4.url }">${book4.title } - ${book.author }</a></h3><span class="CenaPromocyjna"><em class="CenaPoprzednia"><s>${book4.oldPrice } zł</s></em><br>${book4.price } zł</span></div></article>
                    <article class="ProduktProsty OknoRwd"><div class="AnimacjaZobacz"><div class="Zobacz"><strong><a href="/${book5.url }">zobacz szczegóły</a></strong></div><div class="Foto"><a class="Zoom" href="/${book5.url }"><img src="/images/books/${book5.image }" width="150" height="200" id="fot_57096_1428" class="Zdjecie Reload" alt="${book5.title } - ${book5.author }" /></a></div><h3><a href="/${book5.url }">${book5.title } - ${book5.author }</a></h3><span class="CenaPromocyjna"><em class="CenaPoprzednia"><s>${book5.oldPrice } zł</s></em><br>${book5.price } zł</span></div></article>
                    <article class="ProduktProsty OknoRwd"><div class="AnimacjaZobacz"><div class="Zobacz"><strong><a href="/${book6.url }">zobacz szczegóły</a></strong></div><div class="Foto"><a class="Zoom" href="/${book6.url }"><img src="/images/books/${book6.image }" width="150" height="200" id="fot_42234_608" class="Zdjecie Reload" alt="${book6.title } - ${book6.author }" /></a></div><h3><a href="/${book6.url }">${book6.title } - ${book6.author }</a></h3><span class="CenaPromocyjna"><em class="CenaPoprzednia"><s>${book6.oldPrice } zł</s></em><br>${book6.price } zł</span></div></article>
                    <article class="ProduktProsty OknoRwd"><div class="AnimacjaZobacz"><div class="Zobacz"><strong><a href="/${book7.url }">zobacz szczegóły</a></strong></div><div class="Foto"><a class="Zoom" href="/${book7.url }"><img src="/images/books/${book7.image }" width="150" height="200" id="fot_2270_695" class="Zdjecie Reload" alt="${book7.title } - ${book7.author }" /></a></div><h3><a href="/${book7.url }">${book7.title } - ${book7.author }</a></h3><span class="CenaPromocyjna"><em class="CenaPoprzednia"><s>${book7.oldPrice } zł</s></em><br>${book7.price } zł</span></div></article>
                    <article class="ProduktProsty OknoRwd"><div class="AnimacjaZobacz"><div class="Zobacz"><strong><a href="/${book8.url }">zobacz szczegóły</a></strong></div><div class="Foto"><a class="Zoom" href="/${book8.url }"><img src="/images/books/${book8.image }" width="150" height="200" id="fot_64275_884" class="Zdjecie Reload" alt="${book8.title } - ${book8.author }" /></a></div><h3><a href="/${book8.url }">${book8.title } - ${book8.author }</a></h3><span class="CenaPromocyjna"><em class="CenaPoprzednia"><s>${book8.oldPrice } zł</s></em><br>${book8.price } zł</span></div></article>
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
                    <article class="ProduktProsty OknoRwd"><div class="AnimacjaZobacz"><div class="Zobacz"><strong><a href="/${book9.url }">zobacz szczegóły</a></strong></div><div class="Foto"><a class="Zoom" href="/${book9.url }"><img src="/images/books/${book9.image }" width="150" height="200" id="fot_24478_95" class="Zdjecie Reload" alt="${book9.title } - ${book9.author }" /></a></div><h3><a href="/${book9.url }">${book9.title } - ${book9.author }</a></h3><span class="CenaPromocyjna"><c:if test="${book9.oldPrice > book9.price }"><S>${book9.oldPrice } zł </S><br></c:if>${book9.price } zł</span></div></article>
                    <article class="ProduktProsty OknoRwd"><div class="AnimacjaZobacz"><div class="Zobacz"><strong><a href="/${book10.url }">zobacz szczegóły</a></strong></div><div class="Foto"><a class="Zoom" href="/${book10.url }"><img src="/images/books/${book10.image }" width="150" height="200" id="fot_47329_970" class="Zdjecie Reload" alt="${book10.title } - ${book10.author }" /></a></div><h3><a href="/${book10.url }">${book10.title } - ${book10.author }</a></h3><span class="CenaPromocyjna"><c:if test="${book10.oldPrice > book10.price }"><S>${book10.oldPrice } zł </S><br></c:if>${book10.price } zł</span></div></article>
                    <article class="ProduktProsty OknoRwd"><div class="AnimacjaZobacz"><div class="Zobacz"><strong><a href="/${book11.url }">zobacz szczegóły</a></strong></div><div class="Foto"><a class="Zoom" href="/${book11.url }"><img src="/images/books/${book11.image }" width="150" height="200" id="fot_41111_1071" class="Zdjecie Reload" alt="${book11.title } - ${book11.author }" /></a></div><h3><a href="/${book11.url }">${book11.title } - ${book11.author }</a></h3><span class="CenaPromocyjna"><c:if test="${book11.oldPrice > book11.price }"><S>${book11.oldPrice } zł </s><br></c:if>${book11.price } zł</span></div></article>
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