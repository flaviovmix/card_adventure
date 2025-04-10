<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="../assets/forms/style.css" rel="stylesheet">        
    </head>
    <body>      
        <div class="container-xl">

            <form id="form_cliente" method="post" action="salvarAluno.jsp">
                <h2>NOVO CARD</h2>  
                <fieldset class="row g-3 cadastro">

                    <div class="col-xxl-4 col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <label for="nome" class="form-label">Nome do Personagem:</label>
                        <input type="text" class="form-control campo-texto" id="nome" name="nome" placeholder="" value="Flávio José dos Passos" required>
                    </div>

                    <div class="col-xxl-4 col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <label for="telefone" class="form-label">Url da Imagem:</label>
                        <input type="text" class="form-control campo-texto" id="telefone" name="telefone" placeholder="" value="(21) 9 8223-4471" required>
                    </div>  

                    <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <label for="cpf" class="form-label">fk_tema</label>
                        <input type="text" class="form-control campo-texto" id="cpf" name="cpf" placeholder="" value="114.897.999-83" required>
                    </div>  

                    <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <label for="rg" class="form-label">fk_classificacao</label>
                        <input type="text" class="form-control campo-texto" id="rg" name="rg" placeholder="" value="114.897.999-83" required>
                    </div>  

                    <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12">
                        <label for="obs" class="form-label">Observação:</label>
                        <textarea class="form-control campo-texto" rows="3" id="obs" name="obs" placeholder="" required>LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY. LOREM IPSUM HAS BEEN THE INDUSTRY'S STANDARD DUMMY TEXT EVER SINCE THE 1500S.</textarea>
                    </div>     


                    <div class="col-md-12">
                        <!--quebra de linha no form-->
                    </div>

                    <div class="col-3">
                        <button type="submit" class="btn btn-primary link-botao">Salvar</button>
                    </div>

                    <div class="col-3">
                        <a class="btn btn-secondary link-botao" href="listarAluno.jsp">Cancelar</a>
                    </div>
                </fieldset>
            </form>
            
<form id="form_cliente" method="post" action="salvarAluno.jsp">
                <h2>NOVO CARD</h2>  
                <fieldset class="row g-3 cadastro">

                    <div class="col-xxl-4 col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <label for="nome" class="form-label">Nome do Personagem:</label>
                        <input type="text" class="form-control campo-texto" id="nome" name="nome" placeholder="" value="Flávio José dos Passos" required>
                    </div>

                    <div class="col-xxl-4 col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <label for="telefone" class="form-label">Url da Imagem:</label>
                        <input type="text" class="form-control campo-texto" id="telefone" name="telefone" placeholder="" value="(21) 9 8223-4471" required>
                    </div>  

                    <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <label for="cpf" class="form-label">fk_tema</label>
                        <input type="text" class="form-control campo-texto" id="cpf" name="cpf" placeholder="" value="114.897.999-83" required>
                    </div>  

                    <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <label for="rg" class="form-label">fk_classificacao</label>
                        <input type="text" class="form-control campo-texto" id="rg" name="rg" placeholder="" value="114.897.999-83" required>
                    </div>  

                    <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12">
                        <label for="obs" class="form-label">Observação:</label>
                        <textarea class="form-control campo-texto" rows="3" id="obs" name="obs" placeholder="" required>LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY. LOREM IPSUM HAS BEEN THE INDUSTRY'S STANDARD DUMMY TEXT EVER SINCE THE 1500S.</textarea>
                    </div>     


                    <div class="col-md-12">
                        <!--quebra de linha no form-->
                    </div>

                    <div class="col-3">
                        <button type="submit" class="btn btn-primary link-botao">Salvar</button>
                    </div>

                    <div class="col-3">
                        <a class="btn btn-secondary link-botao" href="listarAluno.jsp">Cancelar</a>
                    </div>
                </fieldset>
            </form>            
    </div>
    <script src="../../assets/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        const formProduto = document.getElementById('form_cliente');

        formProduto.addEventListener('submit', (event) => {
            const dateInput = document.getElementById('data_nascimento');
            const dateValue = dateInput.value; // Data no formato 'yyyy-MM-dd'

            if (dateValue.includes('/')) {
                // Substituir barras por traços
                dateInput.value = dateValue.replace(/\//g, '-');
            }
        });
        
        document.addEventListener("DOMContentLoaded", function () {
            document.getElementById("nome").focus();
        });        
    </script>        
</body>
</html>