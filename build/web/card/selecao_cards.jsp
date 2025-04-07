
<%@page import="frontend.Footer"%>
<%@page import="cards.DesenharCards"%>
<%@page import="frontend.CssSelecaoCards"%>
<%@page import="frontend.Menus"%>

<%= CssSelecaoCards.gerarHead()%>

<body>

    <%= Menus.gerarMenuPrinpipal()%>

    <main>

        <!--desenhar card-->
        <%= DesenharCards.gerarCard()%>

    </main>

    <%= Footer.gerarFooter()%>


    <script src="../assets/js/scripts.js"></script>

</body>

</html>