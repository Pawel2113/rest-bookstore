<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML>
<html lang="pl">
<head>
    <meta charset="utf-8" />

    <meta name="keywords" content="księgarnia internetowa, amadero.pl, książka, prezent literatura piękna, dla dzieci, biografie, poradniki, turystyka, podróżnicze, reportaże, multimedia, Pieśni nad pieśniami. Nowy przekład dynamiczny" />
    <meta name="description" content="Witamy w księgarni internetowej amadero.pl. Zapraszamy do zapoznania się z naszą ofertą. Zobacz teraz!" />
    <meta name="robots" content="index,follow" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href="https://fonts.googleapis.com/css?family=Kotta+One&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css" />



    <link rel="stylesheet" type="text/css" href="/css/style.css" />
    <script type="text/javascript">
    function changeTrBg(row){
    	row.style.backgroundColor = "#e6e6e6";
    }

    function defaultTrBg(row){
    	row.style.backgroundColor = "white";
    }


        function startSearch(pParam){
        	var categoryWord = parseCategory(pParam);
        	var page = 1;
        	window.alert(categoryWord);
        	var searchLink = '${pageContext.request.contextPath}/category/' + categoryWord + '/' + page;
            		window.location.href=searchLink;
        	}

        function displayBook(pParam){
    	var bookUrl = parseUrl(pParam);
    	window.alert(bookUrl);
    	var bookLink = '${pageContext.request.contextPath}/book/' + bookUrl;
        		window.location.href=bookLink;
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





        <h1 class="StrNaglowek">
            <span><div text-transform: uppercase><c:out value="${bookList[0].category }" /></div> </span>
        </h1>


        <section class="StrTresc">

            <div class="Listing">



                <div class="OpisListing">


                </div>

                <div class="cl"></div>


                <div class="Podkategorie">


                </div>

                <div class="cl"></div>

                <nav class="ListingNawigacja LiniaCala">



                    <div class="IndexStron">

                        <b>Strona</b> <a class="Aktywna" href="https://amadero.pl/biografie-c-138.html">1</a><a href="https://amadero.pl/biografie-c-138.html/s=2">2</a><a href="https://amadero.pl/biografie-c-138.html/s=3">3</a> ... <a href="https://amadero.pl/biografie-c-138.html/s=8">8</a>

                        <span>ogółem produktów: 114</span>

                    </div>

                    <div class="SposobWyswietlania">

                        <form id="sposobwyswietlania" class="cmxform" action="/biografie-c-138.html" method="post">
                            <div>
                                <input type="hidden" name="wyswietlanie" id="wyswietlanie" value="" />
                                <span class="Tak" title="W formie okien" onclick="lista(1)"></span>
                                <span  title="W formie wierszy z miniaturkami i opisem" onclick="lista(2)"></span>
                                <span  title="W formie skróconej bez zdjęć" onclick="lista(3)"></span>
                            </div>
                        </form>

                    </div>

                    <div class="cl"></div>

                    <div class="Sortowanie">

                        <form id="sposobsortowania" class="cmxform" action="/biografie-c-138.html" method="post">
                            <div>
                                <input type="hidden" name="sortowanie" id="sortowanie" value="" />
                                <ul>
                                    <li>
                                        <b>Wyświetlaj wg</b>
                                    </li>
                                    <li>
                                        <span title="Malejąco" onclick="sortow(1)" class="Tak"></span>
                                        <span>domyślnie</span>
                                        <span title="Rosnąco" onclick="sortow(2)" ></span>
                                    </li>
                                    <li>
                                        <span title="Malejąco" onclick="sortow(3)" ></span>
                                        <span>ceny</span>
                                        <span title="Rosnąco" onclick="sortow(4)" ></span>
                                    </li>
                                    <li>
                                        <span title="Malejąco" onclick="sortow(5)" ></span>
                                        <span>nazwy</span>
                                        <span title="Rosnąco" onclick="sortow(6)" ></span>
                                    </li>
                                </ul>
                            </div>
                        </form>

                    </div>


                    <div class="IloscProdStronie">
                        <form id="iloscprodstrony" class="cmxform" action="/biografie-c-138.html" method="post">
                            <div>
                                <input type="hidden" name="ilosc_na_stronie" id="ilosc_na_stronie" value="" />
                                <b>Wyników na stronie:</b>
                                <span class="Tak" onclick="str_prod(15)">15</span>
                                <span  onclick="str_prod(30)">30</span>
                                <span  onclick="str_prod(45)">45</span>
                            </div>
                        </form>
                    </div>

                    <div class="cl"></div>

                </nav>

                <div class="ListingFiltry LiniaCala">

                    <form id="filtr" action="/biografie-c-138.html" method="post" class="cmxform">

                        <div class="Lf">

                            <input type="hidden" name="postget" value="tak" />
                            <strong>Dodatkowe opcje przeglądania</strong>
                        </div>

                        <div class="Rg">

                            <input type="submit" class="przycisk" value="Wyświetl produkty" />
                        </div>

                        <div class="cl"></div>

                        <div class="UzyteTagi"></div>

                        <div class="cl"></div>

                        <div class="ZakresCen">
                            <b>Zakres cen od</b> <input type="text" size="4" value="" class="ulamek" name="ceno" /> do <input type="text" size="4" value="" class="ulamek" name="cend" />
                        </div>



                        <div class="Multi FiltryProducent">
                            <span>
                                <b>Producent</b>
                            </span>
<c:forEach var="publishingHouse" items="${publishingHouseList }">
                            <div class="dropdown-content">

                                    <div class="option"><input type="checkbox" id="filtr_producent_2" name="producent[2]"  /> <label id="label_filtr_producent_2" for="filtr_producent_2"><a data-id="filtr_producent_2"><c:out value="${publishingHouse }"/></a></label></div>
                                </c:forEach>
                        </div>
                        </div>

                        <div class="Multi FiltryNowosci"><span><b>Tylko nowości</b></span><ul class="Wybor"><li><input type="checkbox" name="nowosci" id="filtr_nowosci" value="tak"  /> <label id="label_filtr_nowosci" for="filtr_nowosci"><a data-id="filtr_nowosci">tak</a></label></li></ul></div>

                        <div class="Multi FiltryPromocje"><span><b>Tylko promocje</b></span><ul class="Wybor"><li><input type="checkbox" name="promocje" id="filtr_promocje" value="tak"  /> <label id="label_filtr_promocje" for="filtr_promocje"><a data-id="filtr_promocje">tak</a></label></li></ul></div>


                        <div class="cl"></div>

                    </form>

                </div>


                <div id="Porownywanie" style="display:none">

                    <div class="Lf">
                        <strong>Produkty dodane do porównania</strong>
                    </div>

                    <div class="Rg" id="przyciskPorownywania" style="display:none">
                        <span id="oknoPorownywarki" class="przycisk oknoAjax">Porównaj wybrane produkty</span>
                    </div>

                    <div class="cl"></div>

                    <div id="ListaProduktowPorownanie">

                    </div>

                </div>

                <a href="/book/angela-merkel-cesarzowa-europy-arkadiusz-stempin" onclick="displayBook("angela-merkel-cesarzowa-europy-arkadiusz-stempin");">klikoj kilkoj</a>

<c:set var="licznik" value="${recordStartCounter }"/>
<c:forEach var="b" items="${bookList }">
		<c:set var="licznik" value="${licznik+1}"/>

            <div class="Okno OknoRwd">
                <div class="AnimacjaZobacz">
                    <div class="Zobacz">
                        <strong><a href="/book/<c:out value='${b.url }'/>" onclick="displayBook("<c:out value='${b.url }'/>");">zobacz szczegóły</a></strong>
                    </div>
                    <div class="Foto">
                        <a class="Zoom" href="/book/<c:out value='${b.url }'/>" onclick="displayBook("<c:out value='${b.url }'/>");">
                            <img src="/images/books/<c:out value='${b.image }' />" width="150" height="200" id="fot_87940_578" class="Zdjecie Reload" alt="<c:out value='${b.title } - ${b.author }' />" />
                        </a>
                    </div>
                    <div class="ProdCena">
                        <h3>
                            <a href="/book/<c:out value='${b.url }'/>" onclick="displayBook("<c:out value='${b.url }'/>");"><c:out value="${b.title } - ${b.author }" /></a>
                        </h3>
                        <span class="Cena"><c:if test="<c:out value='${b.oldPrice > b.price }'/>"><s><c:out value="${b.oldPrice }"/> zł </s><br></c:if><c:out value="${b.price }" /> zł</span>
                        <div class="Zakup">
                            <input type="text" id="ilosc_87940_578" value="1" class="InputIlosc" size="4" onchange="SprIlosc(this,1,1)" name="ilosc" />
                            <em>szt.</em>
                            <span class="DoKoszyka" onclick="return DoKoszyka('87940_578','dodaj',0,1)" title="Dodaj do koszyka <c:out value='${b.title } - ${b.author }' />">Do koszyka</span>
                        </div>
                    </div>
                </div>
            </div>

	</c:forEach>



            <br />

            <div class="Listing">

                <nav class="ListingNawigacja LiniaCala">



                    <div class="IndexStron">

                        <b>Strona</b> <a class="Aktywna" href="https://amadero.pl/biografie-c-138.html">1</a><a href="https://amadero.pl/biografie-c-138.html/s=2">2</a><a href="https://amadero.pl/biografie-c-138.html/s=3">3</a> ... <a href="https://amadero.pl/biografie-c-138.html/s=8">8</a>

                        <span>ogółem produktów: ${licznik }</span>

                    </div>


                    <div class="IloscProdStronie">
                        <form id="iloscprodstrony_dol" class="cmxform" action="/biografie-c-138.html" method="post">
                            <div>
                                <input type="hidden" name="ilosc_na_stronie" id="ilosc_na_stronie_dol" value="" />
                                <b>Wyników na stronie:</b>
                                <span class="Tak" onclick="str_prod(15,'_dol')">15</span>
                                <span  onclick="str_prod(30,'_dol')">30</span>
                                <span  onclick="str_prod(45,'_dol')">45</span>
                            </div>
                        </form>
                    </div>

                    <div class="cl"></div>

                </nav>

            </div>

            <div class="OpisListingDolny">


            </div>

        </section>

                </div>

                <div class="cl"></div>

            </div>

<%@include file="/WEB-INF/incl/footer.app" %>



<div id="RwdWersja"></div>


</body>
</html>