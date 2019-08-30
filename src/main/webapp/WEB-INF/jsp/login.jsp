<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pl">
<head>
        <title><s:message code="login.pageName" /></title>
</head>
<body>
  <%@include file="/WEB-INF/incl/menu.app"%>

<h1 class="StrNaglowek">
    <span><s:message code="login.pageName" /></span>
</h1>

<section class="StrTresc">

    <div class="TabelaTbl">

        <div class="RamkaProcent Ramka">

            <strong>Jeśli posiadasz konto w naszym sklepie, zaloguj się:</strong>

            <br /><br />

            <form id="loginForm" action="/login" method="POST">

            		<table width="350" border="0" cellpadding="4" cellspacing="1"
            			align="center">

            			<tr>
            				<td colspan="2" align="center">
            					<c:if test="${not empty param.error}">
            						<font color="red"><s:message code="error.login"/></font>
            					</c:if>
            				</td>
            			</tr>
            			<tr>
            				<td align="right" width="140">
            					<s:message code="register.email" />
            				</td>
            				<td align="left">
            					<input type="text" name="email" id="email"
            					size="30" />
            				</td>
            			</tr>
            			<tr>
            				<td align="right" width="140">
            					<s:message code="register.password" />
            				</td>
            				<td align="left">
            					<input type="password" name="password" id="password" size="30" />
            				</td>
            			</tr>

            			<tr>
            				<td colspan="2" align="center" bgcolor="#ffffff"><input
            					type="submit" value="Zaloguj"/></td>
            			</tr>

            		</table>
            	</form>

            <br /><br />

            <strong>Odzyskiwanie hasła:</strong>

            <br /><br />

            Jeżeli zapomniałeś hasła, wpisz swój adres e-mail, a my prześlemy do Ciebie wiadomość z nowym hasłem.

            <br /><br />

            <form action="https://amadero.pl/logowanie.html" method="post" id="przypomnienie">

                <p>
                    <span>Podaj adres email: <em class="required"></em></span>
                    <input type="text" size="35" style="width:80%" name="emailprzypomnienie" id="emailprzypomnienie" />
                </p>

                <p>

                    <input type="hidden" name="adres_ip" value="94.254.203.129" />
                    <input type="hidden" name="nazwa_hosta" value="user-94-254-203-129.play-internet.pl" />

                    <input type="submit" id="submitButtonHaslo" class="przyciskWylaczony" value="Wyślij" disabled="disabled" />

                </p>

            </form>

        </div>



        <div class="RamkaProcent Ramka">

            <strong>Rejestracja konta</strong>

            <br /><br />

            Szanowny Kliencie, dzięki rejestracji w naszym sklepie będziesz miał możliwość:<br /><br />- podglądu statusu realizacji zamówień<br />- podglądu historii zakupów<br />- otrzymania rabatów i kuponów promocyjnych<br />- brak konieczności wprowadzania swoich danych przy kolejnych zakupach

            <br /><br />

            <p>
                <a href="/register" class="przycisk">Utwórz konto</a>
            </p>

        </div>

    </div>

</section>
</body>
</html>