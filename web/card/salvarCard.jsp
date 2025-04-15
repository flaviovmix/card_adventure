<%@page import="cards.CardDAO"%>
<%@page import="cards.CardBean"%>
<%
    CardBean card = new CardBean();

    card.setNome(request.getParameter("nome"));
    card.setDescricao(request.getParameter("descricao"));
    card.setFk_tema(Integer.parseInt(request.getParameter("fk_tema")));
    card.setFk_classificacao(Integer.parseInt(request.getParameter("fk_classificacao")));
    
    CardDAO dao = new CardDAO();
    dao.adicionarCard(card);

    response.sendRedirect(request.getContextPath()+ "/card/selecao_personagens.jsp");%>
%>