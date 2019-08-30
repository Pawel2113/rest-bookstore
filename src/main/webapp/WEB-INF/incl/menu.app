<table width="100%" border="0" cellpadding="8" cellspacing="4" class="tableMenuBg" bgcolor="#E97E13">
	<tr>
		<td align="left" width="900">
		    <img src="/images/template/rwd_koszyk.png">
			<a href="/koszyk"><s:message code="menu.basket"/></a>&nbsp;&nbsp;
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<a href="/admin"><s:message code="menu.adminPage"/></a>
			</sec:authorize>
		</td>
		<td align="right">
		<sec:authorize access="hasRole('ANONYMOUS')">
		    <img src="/images/template/rwd_konto.png">
			<a href="/login"><s:message code="menu.login"/></a>&nbsp;&nbsp;
			<img src="/images/template/rwd_rejestracja.png">
			<a href="/register"><s:message code="menu.register"/></a>&nbsp;&nbsp;
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			<a href="/profile"><s:message code="menu.profile"/></a>
			<a href="/logout"><s:message code="menu.logout"/></a>
		</sec:authorize>
		</td>
	</tr>
</table>

<div id="Naglowek">
        <a id="LinkLogo" href="https://amadero.pl"><img src="/images/banners/AMADERO- BANER-WIOSNA.jpg" alt="AMADERO.PL" title="AMADERO.PL" /></a>
    </div>

    <nav id="GorneMenu" class="Rozwiniete">



        <ul><li class="smallRectangle" aria-haspopup="true"><a href="https://amadero.pl/nowosci.html">Nowości</a></li><li class="smallRectangle" aria-haspopup="true"><a   href="https://amadero.pl/promocje.html">Promocje</a></li><li class="smallRectangle" aria-haspopup="true"><a href="https://amadero.pl/regulamin-pm-5.html">Regulamin</a></li><li class="smallRectangle" aria-haspopup="true"><a href="https://amadero.pl/dostawa-pm-3.html">Dostawa</a></li><li class="smallRectangle" aria-haspopup="true"><a href="https://amadero.pl/kontakt-f-1.html">Kontakt</a></li></ul>

    </nav>