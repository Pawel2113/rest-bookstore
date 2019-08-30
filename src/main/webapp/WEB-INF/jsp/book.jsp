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
    	window.alert(bookId);
    	var searchLink = '${pageContext.request.contextPath}/book/' + bookUrl;
        		window.location.href=searchLink;
    	}

    </script>
</head>


<body style="background:#">
<%@include file="/WEB-INF/incl/menu.app" %>

<section id="RamkaProduktu" itemscope itemtype="http://schema.org/Product">

    <div id="KartaProduktu">



        <div id="ZdjeciaProduktu" style="width:310px">



            <div id="ZdjeciaDuze" style="width:250px">
                <div id="ZdjeciaWew">
                    <a class="ZdjecieProduktu Wyswietlane" id="DuzeFoto1" href="https://amadero.pl/images/potęga-miłości-francine-rivers-.jpg" title="Potęga miłości - Francine Rivers"><img src="images/mini/250px_potęga-miłości-francine-rivers-.jpg" width="250" height="250" class="Zdjecie" itemprop="image" alt="Potęga miłości - Francine Rivers" /></a>
                </div>
            </div>



            <div id="DodatkoweZdjecia">

            </div>

        </div>

        <div id="InformacjeProduktu">



            <div class="Ikonki">
                <span><b>Super promocja</b></span><span><b>Polecamy</b></span><span><b>Nasz hit</b></span>
            </div>



            <div class="NazwaProducent">

                <h1 itemprop="name">${book.title } - ${book.author }</h1>
                <div class="Producent"><a href="https://amadero.pl/szaron-m-59.html">SZARON</a></div>

            </div>


                <div class="SredniaOcena" itemscope itemtype="http://data-vocabulary.org/Review-aggregate">
                    <div itemprop="itemReviewed" style="display:none;">
                    <span itemprop="name">Potęga miłości - Francine Rivers</span>
                    </div>

                    <div itemprop="rating" itemscope itemtype="http://data-vocabulary.org/Rating">Średnia ocena (<span itemprop="average">4</span>/<span itemprop="best">5</span>):</div>

                    <div><img src="szablony/shop_3.rwd/obrazki/recenzje/ocena_4.png" alt="Średnia ocena 4/5" /></div>
                    <div>(głosów <span itemprop="votes"><span class="WszystkieRecenzje">4</span></span>)</div>
                </div>




            <div class="ListaOpisy">



                <p id="Dostepnosc" class="TbPoz miganieSek">
                    <span>Dostępność:</span> <strong>Dostępny</strong>
                </p>


                <p id="CzasWysylki" class="TbPoz">
                    <span>Czas wysyłki:</span> <strong>48 godzin</strong>
                </p>


                                <p class="TbPoz">
                    <span>Koszt wysyłki:</span> <strong id="InfoOpisWysylka">od 13,00 zł <span class="tip"><b>Dostępne formy wysyłki dla oglądanego produktu:</b>Odbiór osobisty - 0,00 zł<br />Przesyłka pocztowa ekonomiczna - 13,00 zł<br />List polecony ekonomiczny - 15,60 zł<br />List polecony ekonomiczny - 18,30 zł<br />Kurier - 22,00 zł<br />Przesyłka pocztowa priorytetowa - 18,30 zł<br /></span></strong>
                </p>


                <p id="NrKatalogowy" class="TbPoz">
                    <span>Numer katalogowy:</span> <strong>978-83-66051-47-8</strong>
                </p>

                <p id="StanMagazynowy" class="TbPoz">
                    <span>Stan magazynowy:</span> <strong><img src="szablony/shop_3.rwd/obrazki/magazyn/5.gif" alt="" /></strong>
                </p>

                <p class="TbPoz">
                    <span>Stan produktu:</span> <strong>Nowy</strong>
                </p>


            </div>

            <form action="/" method="post" id="FormKartaProduktu" class="cmxform" autocomplete="off" >


                    <div class="SekcjaCen">

                        <div class="CenyProduktu" itemprop="offers" itemscope itemtype="http://schema.org/Offer">


                                <p id="CenaGlownaProduktuBrutto">
                                    Cena: <strong><span itemprop="price" content="45.00">45,00 zł</span></strong>
                                </p>


                                <p id="CenaPoprzednia">
                                    Cena poprzednia: <strong>49,90 zł</strong>
                                </p>



                            <div id="ProduktZegar" style="display:none">

                                <div class="Odliczanie"><span id="sekundy_karta_95"></span>pozostało tylko do końca promocji !!</div>


                            </div>


                            <div id="PlatnosciRatalne"></div>
                            <meta itemprop="priceCurrency" content="PLN" />
                            <meta itemprop="availability" content="http://schema.org/InStock" />

                        </div>



                        <div class="Przyciski">

                            <div id="PrzyciskKupowania" >

                                Ilość: <input type="text" id="ilosc_35871_95" value="1" size="3" onchange="SprIlosc(this,1,1)" name="ilosc" />szt. <br /> <span class="DoKoszykaKartaProduktu" onclick="return DoKoszyka('35871_95','dodaj',0,0)" title="Dodaj do koszyka Potęga miłości - Francine Rivers">Dodaj do koszyka</span>




                                <p id="ZakupPrzezAllegro">



                                </p>

                            </div>



                            <p id="InfoNiedostepny" class="miganieSek" style="display:none">

                                <span class="Info">Chwilowo niedostępny</span>


                            </p>



                            <p id="PrzyciskSchowek">
                                <span onclick="DoSchowka(95)">dodaj do schowka</span>
                            </p>
                        </div>

                    </div>


                <div>
                    <input id="InputCenaKoncowaBrutto" value="45.00" type="hidden" />
                    <input id="InputWybraneCechy_35871_95" value="" type="hidden" />
                    <input id="CenaPunkty" value="0" type="hidden" />
                    <input id="parametry" value="35871_95;45.00;42.86;49.90;0.00" type="hidden" />
                    <input id="parametryLukas" value="" type="hidden" />
                    <input id="parametrySantander" value="" type="hidden" />
                    <input id="parametryMbank" value="" type="hidden" />
                    <input id="parametryPayURaty" value="" type="hidden" />
                    <input id="parametryBgz" value="" type="hidden" />
                </div>

            </form>


        </div>

    </div>



        <ul id="PodzielSie">
            <li><a class="facebook" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Famadero.pl%2Fpotega-milosci-francine-rivers-p-95.html" rel="nofollow" title="Poinformuj o tym produkcie na Facebook"></a></li>
            <li><a class="nk" href="http://nasza-klasa.pl/sledzik?shout=https%3A%2F%2Famadero.pl%2Fpotega-milosci-francine-rivers-p-95.html" rel="nofollow" title="Poinformuj o tym produkcie na Nasza klasa"></a></li>
            <li><a class="flaker" href="http://pinger.pl/share?title=Potęga miłości - Francine Rivers&amp;content=https%3A%2F%2Famadero.pl%2Fpotega-milosci-francine-rivers-p-95.html" rel="nofollow" title="Poinformuj o tym produkcie na Pinger"></a></li>
            <li><a class="wykop" href="http://www.wykop.pl/dodaj/link/?url=https%3A%2F%2Famadero.pl%2Fpotega-milosci-francine-rivers-p-95.html&amp;title=Potęga miłości - Francine Rivers" rel="nofollow" title="Poinformuj o tym produkcie na Wykop.pl"></a></li>
            <li><a class="twitter" href="http://twitter.com/share?url=https%3A%2F%2Famadero.pl%2Fpotega-milosci-francine-rivers-p-95.html&amp;text=Potęga miłości - Francine Rivers" rel="nofollow" title="Poinformuj o tym produkcie na Twitter"></a></li>
            <li><a class="gg" href="http://www.gg.pl/polec?url=https%3A%2F%2Famadero.pl%2Fpotega-milosci-francine-rivers-p-95.html&amp;title=Potęga miłości - Francine Rivers" rel="nofollow" title="Poinformuj o tym produkcie na GG"></a></li>
            <li><a class="gogplus" href="https://plus.google.com/share?url=https%3A%2F%2Famadero.pl%2Fpotega-milosci-francine-rivers-p-95.html" rel="nofollow" title="Poinformuj o tym produkcie na Google Plus"></a></li>
        </ul>

        <div class="cl"></div>



    <div id="GlowneLinkiProduktu">

        <a class="ZapytanieProdukt" href="https://amadero.pl/zapytanie-o-produkt-produkt-f-2.html/produkt=95" rel="nofollow">Zapytaj o produkt</a>

        <a class="PolecProdukt" href="https://amadero.pl/polec-znajomemu-produkt-f-3.html/produkt=95" rel="nofollow">Poleć znajomemu</a>



        <a class="LinkPDF" href="https://amadero.pl/potega-milosci-francine-rivers-kartapdf-95.html" rel="nofollow">Specyfikacja PDF</a>

    </div>

    <div style="display:none">

        <p id="InformacjaPunkty" class="InformacjaOk">

        </p>

    </div>



    <div id="Portale" >

        <div id="FbWyslij"></div>

        <div id="FbProdukt"></div>

        <div id="GooglePlusProdukt"></div>

        <div id="NaszaKlasaProdukt"></div>

        <div class="cl"></div>

    </div>


    <div id="ZakladkiProduktu">

        <div id="TloZakladek">

            <ul id="Zakladki">


                <li id="z_opis" class="aktywna">Opis produktu</li>


                    <li id="z_recenzje">Recenzje produktu (4)</li>



            </ul>

            <div class="cl"></div>

        </div>

        <div id="TresciZakladek">


            <div class="widoczna tz_opis"  itemprop="description">

                <div style="text-align: justify;"><span style="font-size: 13px;"><span style="font-family: Arial;"><span style="color: rgb(0, 0, 0);">Według  Angel, od mężczyzn nie można było oczekiwać niczego innego, jak tylko  oszustwa i zdrady. Sprzedana w dzieciństwie do domu publicznego, teraz  żyła podsycaną ciągle nienawiścią. Najgorętszą nienawiść żywiła do  mężczyzn, bo to oni wykorzystywali ją i porzucali, zostawiając w jej  wnętrzu przerażające poczucie pustki.   Wtedy spotkała Michała Ozeasza. </span><span style="color: rgb(0, 0, 0);">Michał  we wszystkim pragnął postępować zgodnie z Bożym sercem, dlatego  posłuszny Jego wezwaniu, ożenił się z Angel i obdarzył ją bezwarunkową  miłością. Powoli, dzień po dniu, udowadniał swoim życiem, że nie spełni  gorzkich oczekiwań żony. W końcu serce Angel zaczęło topnieć, bez  względu na to, jak bardzo pragnęła się temu przeciwstawić. Niestety,  wraz z tą nieoczekiwaną przemianą serca, Angel zaczęła odczuwać  miażdżące poczucie winy i braku własnej wartości. Rozpoczęła się jej  ucieczka. Ucieczka z powrotem w ciemność, ucieczka od podążającej za nią  wytrwale miłości męża, ucieczka w przerażeniu z powodu niemożliwej już  do ukrycia prawdy. Uzdrowienie jej ran musiało przyjść od Tego, który  kochał ją bardziej niż Michał Ozeasz… Tego, który nie chciał już nigdy  wypuścić jej ze swoich objęć.  Opowiadając  na nowo przejmujące przesłanie biblijnej księgi Ozeasza, powieść  „Potęga miłości” przedstawia obraz bezwarunkowej, odnawiającej,  bezgranicznej miłości Boga w sposób, który ma moc przemienić ludzkie  życie.<br />
<br />
FRANCINE  RIVERS napisała ponad dwadzieścia bestsellerowych powieści i otrzymała  wiele nagród za twórczość literacką, w tym nagrodę Critic’s Choice  Award, przyznawaną przez Amerykańskie Stowarzyszenie Powieści Kobiecej  (RWA) nagrodę RITA w latach 1995, 1996 i 1997, wraz z włączeniem do  ekskluzywnej Hall of Fame – grupy największych sław tej organizacji, a  także Złoty Medal Amerykańskiego Stowarzyszenia Wydawców  Chrześcijańskich ECPA za powieść „The Last Sin Eater”. Jej książki  zdobywają liczne nagrody i przyciągają miliony czytelników.<br />
<br />
</span></span></span></div>
<span style="font-size: 10px;">
<div class="projector_descshort"><span style="font-size: 13px;"><span style="font-family: Arial;"> </span></span></div>
</span>
<div style="text-align: justify;"><span style="font-size: 13px;"> </span></div>
<div style="text-align: justify;"><span style="font-size: 13px;"><span style="font-family: Arial;">
<div style="page-break-after: always;"><span style="DISPLAY:none"> </span></div>
<b>Format: </b><span lang="DE">176 x 250</span>
<div style="page-break-after: always;"><span style="DISPLAY:none"> </span></div>
<b>Oprawa:</b> miękka
<div style="page-break-after: always;"><span style="DISPLAY:none"> </span></div>
<b>Ilość stron: </b>472</span></span><span style="font-size: 13px;"><br />
</span></div>


            </div>

            <div class="ukryta tz_recenzje">

                <div class="Recenzja">
                            <span>Autor recenzji: <b>As</b></span>
                            <span>Ocena produktu: <img src="szablony/shop_3.rwd/obrazki/recenzje/ocena_4.png" alt="Ocena produktu 4/5" /></span>
                            <span>Data napisania recenzji: <b>04-11-2012</b></span>
                            <div>Jest to romans, ale wyjątkowy. Chociaż nie gustuję w tym gatunku, jednak od tej powieści  nie mogłam się oderwać....Polecam każdemu.</div>
                          </div><div class="Recenzja">
                            <span>Autor recenzji: <b>justyna</b></span>
                            <span>Ocena produktu: <img src="szablony/shop_3.rwd/obrazki/recenzje/ocena_4.png" alt="Ocena produktu 4/5" /></span>
                            <span>Data napisania recenzji: <b>04-09-2012</b></span>
                            <div>Wzruszyło mnie jak zmieniło się serce Angel i jaką siłę miał Michał do walki o swoją żonę.</div>
                          </div><div class="Recenzja">
                            <span>Autor recenzji: <b>Lena</b></span>
                            <span>Ocena produktu: <img src="szablony/shop_3.rwd/obrazki/recenzje/ocena_4.png" alt="Ocena produktu 4/5" /></span>
                            <span>Data napisania recenzji: <b>21-03-2012</b></span>
                            <div>Kiedy pożyczam komuś tą książkę to mówię, żeby nagotował sobie obiadów na trzy dni, bo nie jest łatwo się od niej oderwać :-) Ci którzy czytali wiedzą co mam na myśli.</div>
                          </div><div class="Recenzja">
                            <span>Autor recenzji: <b>ala</b></span>
                            <span>Ocena produktu: <img src="szablony/shop_3.rwd/obrazki/recenzje/ocena_4.png" alt="Ocena produktu 4/5" /></span>
                            <span>Data napisania recenzji: <b>31-01-2012</b></span>
                            <div>Jeżeli ktoś lubi połączenie watku miłosnego i zaufania Bogu, to ta pozycja jest bardzo odpowiednia. Nadaje się tez dla młodego czytelnika gdyż pośpiech i upór tak często typowe dla młodości są w tej pozycji zastąpione przez cierpliwe oczekiwanie i poddanie Bogu.</div>
                          </div>


                <a href="https://amadero.pl/napisz-recenzje-rw-95.html" class="przycisk Prawy">Napisz recenzję</a>

                <div class="cl"></div>

            </div>

        </div>

    </div>

    <div id="PozostaleProdukty">


                <div class="Produkty LiniaPrawa"  style="width:50%">

            <strong>Klienci zakupili także</strong>
            <div class="Lista LiniaDolna"><div class="Foto"><a class="Zoom" href="https://amadero.pl/noc-miliona-cudow-paul-estabrooks-p-606.html"><img src="images/KSIAZKA/SWIADECTWA/mini/70px_noc_miliona_cudow.jpg" width="70" height="70" id="fot_29427_606" class="Zdjecie Reload" alt="Noc miliona cudów - Paul Estabrooks" /></a></div><div class="ProdCena" style="margin-left:90px"><h3><a href="https://amadero.pl/noc-miliona-cudow-paul-estabrooks-p-606.html">Noc miliona cudów - Paul Estabrooks</a></h3><span class="Cena">28,00 zł</span></div><div class="cl"></div></div><div class="Lista LiniaDolna"><div class="Foto"><a class="Zoom" href="https://amadero.pl/swiete-rodzicielstwo-gary-thomas-p-1171.html"><img src="images/KSIAZKA/PORADNIKI/mini/70px_swiete_rodzicielstwo_gary.jpg" width="70" height="70" id="fot_42501_1171" class="Zdjecie Reload" alt="Święte rodzicielstwo - Gary Thomas" /></a></div><div class="ProdCena" style="margin-left:90px"><h3><a href="https://amadero.pl/swiete-rodzicielstwo-gary-thomas-p-1171.html">Święte rodzicielstwo - Gary Thomas</a></h3><span class="CenaPromocyjna"><em class="CenaPoprzednia">39,90 zł</em>35,00 zł</span></div><div class="cl"></div></div><div class="Lista LiniaDolna"><div class="Foto"><a class="Zoom" href="https://amadero.pl/gladys-aylward-przygoda-calego-zycia-j-g-benge-p-73.html"><img src="images/KSIAZKA/POWIESC/mini/70px_gladys_aylward_przygoda_calego_zycia_1.jpg" width="70" height="70" id="fot_8769_73" class="Zdjecie Reload" alt="GLADYS AYLWARD. Przygoda całego życia - J. &amp; G. Benge" /></a></div><div class="ProdCena" style="margin-left:90px"><h3><a href="https://amadero.pl/gladys-aylward-przygoda-calego-zycia-j-g-benge-p-73.html">GLADYS AYLWARD. Przygoda całego życia - J. & G. Benge</a></h3><span class="Cena">17,00 zł</span></div><div class="cl"></div></div><div class="Lista LiniaDolna"><div class="Foto"><a class="Zoom" href="https://amadero.pl/wiecznosc-w-ich-sercach-don-richardson-p-60.html"><img src="images/KSIAZKA/POWIESC/mini/70px_wiecznosc_w_ich_sercach_don_richardson.jpg" width="70" height="70" id="fot_38007_60" class="Zdjecie Reload" alt="Wieczność w ich sercach - Don Richardson" /></a></div><div class="ProdCena" style="margin-left:90px"><h3><a href="https://amadero.pl/wiecznosc-w-ich-sercach-don-richardson-p-60.html">Wieczność w ich sercach - Don Richardson</a></h3><span class="Cena">18,00 zł</span></div><div class="cl"></div></div><div class="Lista LiniaDolna"><div class="Foto"><a class="Zoom" href="https://amadero.pl/przesladowani-za-wiare-br-andrew-all-janssen-p-24.html"><img src="images/KSIAZKA/SWIADECTWA/mini/70px_przesladowani_za_wiare.jpg" width="70" height="70" id="fot_87432_24" class="Zdjecie Reload" alt="Prześladowani za Wiarę - Br. Andrew, All Janssen" /></a></div><div class="ProdCena" style="margin-left:90px"><h3><a href="https://amadero.pl/przesladowani-za-wiare-br-andrew-all-janssen-p-24.html">Prześladowani za Wiarę - Br. Andrew, All Janssen</a></h3><span class="Cena">34,00 zł</span></div><div class="cl"></div></div>

        </div>

                <div class="Produkty LiniaPrawa"  style="width:50%">

            <strong>Pozostałe produkty z kategorii</strong>
            <div class="Lista LiniaDolna"><div class="Foto"><a class="Zoom" href="https://amadero.pl/potega-nadziei-francine-rivers-p-513.html"><img src="images/KSIAZKA/POWIESC/mini/70px_Potega_nadziei.jpg" width="70" height="70" id="fot_34506_513" class="Zdjecie Reload" alt="POTĘGA NADZIEI - Francine Rivers" /></a></div><div class="ProdCena" style="margin-left:90px"><h3><a href="https://amadero.pl/potega-nadziei-francine-rivers-p-513.html">POTĘGA NADZIEI - Francine Rivers</a></h3><span class="Cena">39,90 zł</span></div><div class="cl"></div></div><div class="Lista LiniaDolna"><div class="Foto"><a class="Zoom" href="https://amadero.pl/batszeba-rodowod-laski-francine-rivers-p-939.html"><img src="images/KSIAZKA/POWIESC/mini/70px_batszeba_rodowod_laski_Rivers.jpg" width="70" height="70" id="fot_76213_939" class="Zdjecie Reload" alt="BATSZEBA. RODOWÓD ŁASKI - Francine Rivers" /></a></div><div class="ProdCena" style="margin-left:90px"><h3><a href="https://amadero.pl/batszeba-rodowod-laski-francine-rivers-p-939.html">BATSZEBA. RODOWÓD ŁASKI - Francine Rivers</a></h3><span class="CenaPromocyjna"><em class="CenaPoprzednia">29,90 zł</em>25,00 zł</span></div><div class="cl"></div></div><div class="Lista LiniaDolna"><div class="Foto"><a class="Zoom" href="https://amadero.pl/pomimo-wszystko-karen-kingsbury-p-554.html"><img src="images/KSIAZKA/POWIESC/mini/70px_Pomimo_wszystko.jpg" width="70" height="70" id="fot_31665_554" class="Zdjecie Reload" alt="Pomimo wszystko - Karen Kingsbury" /></a></div><div class="ProdCena" style="margin-left:90px"><h3><a href="https://amadero.pl/pomimo-wszystko-karen-kingsbury-p-554.html">Pomimo wszystko - Karen Kingsbury</a></h3><span class="CenaPromocyjna"><em class="CenaPoprzednia">29,90 zł</em>26,00 zł</span></div><div class="cl"></div></div><div class="Lista LiniaDolna"><div class="Foto"><a class="Zoom" href="https://amadero.pl/rozdroza-wm-paul-young-p-611.html"><img src="images/POZOSTALE/mini/70px_rozdroza.jpg" width="70" height="70" id="fot_32920_611" class="Zdjecie Reload" alt="Rozdroża - WM. Paul Young" /></a></div><div class="ProdCena" style="margin-left:90px"><h3><a href="https://amadero.pl/rozdroza-wm-paul-young-p-611.html">Rozdroża - WM. Paul Young</a></h3><span class="Cena">35,00 zł</span></div><div class="cl"></div></div><div class="Lista LiniaDolna"><div class="Foto"><a class="Zoom" href="https://amadero.pl/to-co-zostalo-jodi-picoult-p-970.html"><img src="images/KSIAZKA/POWIESC/mini/70px_To_co_zostalo_Jodi_Picoult.jpg" width="70" height="70" id="fot_89134_970" class="Zdjecie Reload" alt="To, co zostało - Jodi Picoult" /></a></div><div class="ProdCena" style="margin-left:90px"><h3><a href="https://amadero.pl/to-co-zostalo-jodi-picoult-p-970.html">To, co zostało - Jodi Picoult</a></h3><span class="CenaPromocyjna"><em class="CenaPoprzednia">36,00 zł</em>33,00 zł</span></div><div class="cl"></div></div>

        </div>

    </div>

</section>

<script>




PokazTip('#InfoOpisWysylka');
</script>
</body>
</html>