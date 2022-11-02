

<%
    session.invalidate();//Encerra a sessão do usuario
    response.sendRedirect("../index.jsp?erro=4");//Redireciona para login msg -> sua sessão foi encerrada

%>