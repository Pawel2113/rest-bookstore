<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html lang="pl">
<head>

</head>
<body>
<section class="StrTresc Ramka">



    <p class="Informacja">
        Wypełnij dokładnie poniższy formularz rejestracyjny


    </p>

    <form action="adduser" method="POST" id="rejestracja" modelAttribute="customer" enctype="multipart/form-data" >

    <div class="TabelaTbl">



        <div class="RamkaProcent Ramka" style="padding-right:20px">

            <strong class="CheckSekcja">Dane użytkownika</strong>

            <br />

            <p>
                <span>Imię: <em class="required"></em></span>
                <input type="text" path="firstName" id="firstName" name="firstName" style="width:95%" value="" class="required" />
            </p>

            <p>
                <span>Nazwisko: <em class="required"></em></span>
                <input type="text" path="lastName" id="lastName" name="lastName" style="width:95%"  value="" class="required" />
            </p>

            <p class="OsobowoscPrawna">

                <b><input type="radio" value="1" name="person" onclick="ZmienOsobowosc(1)" checked="checked" /> osoba fizyczna</b>
                <b><input type="radio" value="0" name="person" onclick="ZmienOsobowosc(2)" /> firma</b>

            </p>

            <div id="osobaFizyczna" >


            </div>

            <div id="osobaPrawna" style="display:none">

                <p>
                    <span>Nazwa firmy: <em class="required"></em></span>
                    <input type="text" path="company" name="nazwa_firmy" id="nazwa_firmy" style="width:95%" value=""  />
                </p>

                <p>
                    <span>Numer NIP: <em class="required"></em></span>
                    <input type="text" path="nip" name="nip_firmy" id="nip_firmy" value="" />
                </p>


            </div>

            <p>
                <span>Ulica i numer domu / lokalu: <em class="required"></em></span>
                <input type="text" path="adress" name="adress" id="adress" style="width:95%" value="" class="required" />
            </p>

            <p>
                <span>Kod pocztowy: <em class="required"></em></span>
                <input type="text" path="postCode" name="postCode" id="postCode"  value="" class="required" />
            </p>

            <p>
                <span>Miejscowość: <em class="required"></em></span>
                <input type="text" path="city" name="city" id="city" style="width:95%" value="" class="required" />
            </p>

            <p>
                <span class="required">Kraj:</span>
                <select path="country" name="country" id="selection" style="width:80%"><option value="13">Australia</option><option value="14">Austria</option><option value="21">Belgia</option><option value="33">Bułgaria</option><option value="53">Chorwacja</option><option value="55">Cypr</option><option value="56">Czechy</option><option value="57">Dania</option><option value="67">Estonia</option><option value="72">Finlandia</option><option value="73">Francja</option><option value="84">Grecja</option><option value="195">Hiszpania</option><option value="150">Holandia</option><option value="103">Irlandia</option><option value="98">Islandia</option><option value="38">Kanada</option><option value="123">Litwa</option><option value="124">Luksemburg</option><option value="132">Malta</option><option value="81">Niemcy</option><option value="160">Norwegia</option><option value="170" selected="selected">Polska</option><option value="171">Portugalia</option><option value="176">Rosja</option><option value="175">Rumunia</option><option value="223">Stany Zjednoczone</option><option value="204">Szwajcaria</option><option value="203">Szwecja</option><option value="189">Słowacja</option><option value="190">Słowenia</option><option value="215">Turcja</option><option value="220">Ukraina</option><option value="97">Węgry</option><option value="222">Wielka Brytania</option><option value="105">Włochy</option><option value="117">Łotwa</option></select>
            </p>

                <p>
                    <span>Województwo:</span>
                    <span id="selectionresult"><select path="state" name="state"  style="width:80%"><option value="1">Dolnośląskie</option><option value="9">Karpackie</option><option value="2">Kujawsko-Pomorskie</option><option value="3">Lubelskie</option><option value="4">Lubuskie</option><option value="7">Mazowieckie</option><option value="6">Małopolskie</option><option value="8">Opolskie</option><option value="10">Podkarpackie</option><option value="11">Podlaskie</option><option value="12">Pomorskie</option><option value="13">Śląskie</option><option value="14">Świętokrzyskie</option><option value="15">Warmińsko-Mazurskie</option><option value="16">Wielkopolskie</option><option value="17">Zachodniopomorskie</option><option value="5">Łódzkie</option></select></span>
                </p>

                <p>
                    <span>Numer telefonu: <em class="required"></em></span>
                    <input type="text" path="telephoneNumber" name="telephoneNumber" id="telephoneNumber" style="width:95%" value="" class="required" />
                </p>

        </div>


        <div class="RamkaProcent Ramka">

            <strong class="CheckSekcja">Dane do logowania</strong>

            <br />

            <p>
                <span class="required">Adres email: <em class="required"></em></span>
                <input type="text" style="width:95%" path="email" name="email" id="email" value="" class="required" />
            </p>


            <p>
                <span class="required">Hasło: <em class="required"></em></span>
                <input type="password" style="width:95%" path="password" name="password" id="password" class="required" />
            </p>

            <p>
                <span class="required">Powtórz hasło: <em class="required"></em></span>
                <input type="password" style="width:95%" name="repeatPassword" id="repeatPassword" class="required" />
            </p>

            <div>

            </div>

            <div class="CheckSekcja" style="margin-top:15px;">

                <div class="Lf"><input type="checkbox" value="1" path="newsletter" name="newsletter" id="newsletter" /></div>
                <div class="checkboxOpis">Wyrażam zgodę na otrzymywanie newslettera na podany adres e-mail.</div>

            </div>

            <div class="cl"></div>

            <div class="CheckSekcja">

                <div class="Lf"><input type="checkbox" value="1" name="regulations" id="regulations" class="regulamin" /><em class="required"></em></div>
                <div class="checkboxOpis">Oświadczam, że zapoznałem się regulaminem i akceptuję jego warunki</div>

            </div>

            <div class="cl"></div>

            <div id="error-regulamin"></div>


            <div class="CheckSekcja">

                <div class="Lf"><input type="checkbox" value="1" name="usingCustomerData" id="usingCustomerData" class="usingCustomerData" /><em class="required"></em></div>
                <div class="checkboxOpis">Wyrażam zgodę na przetwarzanie przez Sprzedawcę moich danych osobowych zawartych w formularzu rejestracji konta w celu i zakresie niezbędnym do realizacji zamówień.</div>

            </div>

            <div class="cl"></div>

            <div id="error-przetwarzanie"></div>

            <div class="CheckSekcja">

                <div class="Lf">&nbsp;</div>
                <div class="checkboxOpis">Podanie danych w formularzu jest dobrowolne ale niezbędne do realizacji zamówienia. Posiada Pani/Pan prawo dostępu do treści swoich danych i ich sprostowania, usunięcia, ograniczenia przetwarzania, prawo do przenoszenia danych, prawo do cofnięcia zgody w dowolnym momencie bez wpływu na zgodność z prawem przetwarzania. Szczegóły dotyczące przetwarzania danych osobowych przez Sprzedawcę określone są na stronie Polityki prywatności.</div>

            </div>

            <div class="cl"></div>

            <br /><br />



            <div style="text-align:center">



                <input type="submit" name="akcja" value="zapisz" onclick="window.location.href='${pageContext.request.contextPath}/"/>

                <input type="submit" name="akcja" class="formbutton" id="submitButton"  value="Utwórz konto"
                onclick="window.location.href='${pageContext.request.contextPath}/">

                <div class="cl">&nbsp;</div>

        </div>

    </div>

    </form>

</section>
</body>
</html>