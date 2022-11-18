<%-- 
    Document   : index
    Created on : 31 de out. de 2022, 19:45:17
    Author     : Alunos
--%>
<%@ page import="java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css" />
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
    <body>
        
        <jsp:include page="includes/header.jsp" />
        
        <jsp:include page="includes/navbar.jsp" />
        
        <section class="box">
            <h2>Produtos</h2>
            <div class="row row-cols-1 row-cols-md-4 g-4">
                <%
                Connection con = null;
                Statement st = null;
                ResultSet rs = null;

                String url = "jdbc:postgresql://localhost:5432/website";
                String usuario = "postgres";
                String senhaBD = "admin";
                try{
                    Class.forName("org.postgresql.Driver");
                    con = DriverManager.getConnection(url,usuario,senhaBD);
                    st = con.createStatement();
                    rs = st.executeQuery("SELECT *FROM produtos ORDER BY id DESC");
                    while(rs.next()){
                        String id = rs.getString("id");
                    %>    
                    <div class="col">
                        <div class="card">
                          <img style="width:100%;height:200px;object-fit:cover;" src="arquivos/<%=rs.getString("imagem") %>" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title"><%=rs.getString("nome") %></h5>
                            <p class="card-text"><%=rs.getString("descricao") %></p>
                            <hr>
                            <p style="color:red;font-size:20px;text-align:center;">R$<%=rs.getString("valor")%></p>
                            <button class="btn btn-warning" style="width:100%;">Comprar</button>
                          </div>
                        </div>
                      </div>
                <%    }
                }catch(Exception e){
                    out.print(e);
                }
                
                %>
                
              </div>
        </section>
        <jsp:include page="includes/footer.jsp" />
    </body>
</html>
