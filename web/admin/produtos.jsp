<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <%
         String nomeUsuario = (String) session.getAttribute("NomeUsuario");
            if(nomeUsuario == null ){
                response.sendRedirect("index.jsp?erro=3");
            }
        %>
        <jsp:include page="includes/nav.jsp" />
        <div id="layoutSidenav">
            <jsp:include page="includes/sidenav.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Produtos</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Cadastrar Produtos</li>
                        </ol>
                    </div>
                    <div class="container-fluid px-4">
                        <small>Formulário de cadastro de produtos</small>
                        <form action="config/cadastraProduto.jsp" method="POST" enctype="multipart/form-data">
                            <div class="mb-3">
                                <label class="form-label">Nome do produto</label>
                                <input type="text" class="form-control" name="nome" placeholder="Nome do produto"/> 
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Descrição</label>
                                <input type="text" class="form-control" name="desc" placeholder="Descrição do produto"/> 
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Valor do produto</label>
                                <input type="text" class="form-control" name="valor" placeholder="Valor do produto"/> 
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Imagem do produto</label>
                                <input type="file" class="form-control" name="file[]" multiple /> 
                            </div>
                            <button type="submit" class="btn btn-primary">Cadastrar</button>
                        </form>
                    </div>
                    <div class="container-fluid px-4">
                        <hr>
                        <small>Produtos cadastrados</small>
                        <hr>
                        <table id="datatablesSimple">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Descrição</th>
                                    <th>Valor</th>
                                    <th>imagem</th>
                                    <th>Ações</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Nome</th>
                                    <th>Descrição</th>
                                    <th>Valor</th>
                                    <th>imagem</th>
                                    <th>Ações</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                <tr>
                                    <td>Geladeira</td>
                                    <td>Brastemp</td>
                                    <td>1.900,99</td>
                                    <td> <img src="" width="100" /> </td>
                                    <td>
                                        <a href="" class="text-info" ><i class="fa fa-pencil-square"></i></a>
                                        <a href="" class="text-danger" ><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </main>
              
                <jsp:include page="includes/footer.jsp" />
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
