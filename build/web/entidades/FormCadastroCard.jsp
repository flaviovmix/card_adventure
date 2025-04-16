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
            <div class="row">
                
                <form class="col-8 mx-auto" id="form_cliente" method="post" action="../card/salvarCard.jsp">
                <h2>NOVO CARD</h2>  
                <fieldset class="row g-3 cadastro">

                    <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <label for="nome" class="form-label">Nome do Personagem:</label>
                        <input type="text" class="form-control campo-texto" id="nome" name="nome" placeholder="" value="" required>
                    </div>
                    
                    <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <label for="telefone" class="form-label">Thumbnail do Card:</label>
                      <input type="file" class="form-control" id="inputGroupFile02">
                    </div>                    

                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6">
                        <label for="fk_tema" class="form-label">Tema</label>
                        <select class="form-control campo-texto" id="fk_tema" name="fk_tema" required>
                            <option value="">Selecione um tema</option>
                            <option value="1">Realista</option>
                            <option value="2">Manga</option>
                            <option value="3">Vegetais</option>
                            <option value="4">Cartunesco</option>
                        </select>
                    </div>


                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6">
                        <label for="fk_tema" class="form-label">Categoria</label>
                        <select class="form-control campo-texto" id="fk_classificacao" name="fk_classificacao" required>
                            <option value="">Selecione uma categora</option>
                            <option value="1">Livre</option>
                            <option value="2">12 anos</option>
                            <option value="3">16 anos</option>
                            <option value="4">18 anos</option>
                        </select>
                    </div> 

                    <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12">
                        <label for="obs" class="form-label">Observação:</label>
                        <textarea class="form-control campo-texto" rows="3" id="obs" name="obs" placeholder="" required></textarea>
                    </div>     


                    <div class="col-md-12">
                        <!--quebra de linha no form-->
                    </div>

                    <div class="col-3">
                        <button type="submit" class="btn btn-primary link-botao">Salvar</button>
                    </div>

                    <div class="col-3">
                        <a class="btn btn-danger link-botao" href="listarAluno.jsp">Cancelar</a>
                    </div>
                    <div class="col-2">
                        
                    </div>
                    <div class="col-4 text-end">
                        <button type="button" class="col-5 btn btn-secondary link-botao" data-bs-toggle="modal" data-bs-target="#modalNovoCard">
                          Adicionar Atributos
                        </button>                    
                        </div>
                </fieldset>
            </form>
                
            
  <!-- Botão para abrir o modal -->


<!-- Modal -->
<div class="modal fade" id="modalNovoCard" tabindex="-1" data-bs-backdrop="static" aria-labelledby="modalNovoCardLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">

      <div class="modal-header">
        <h5 class="modal-title" id="modalNovoCardLabel">Adicionar Atributos</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fechar"></button>
      </div>

      <div class="modal-body">
        <form id="form_cliente" method="post" action="salvarAluno.jsp">
          <div class="row g-4">

            <!-- Atributos em 2 colunas -->
            <div class="row mt-3">
              <!-- Coluna 1 -->
              <div class="col-md-6">
                <h3>Imagem das Fases</h3>
                
                
                
                <div class="mb-3">
                    <div class="row g-2">
                        <div class="col-12">
                            <input type="file" class="form-control" id="inputGroupFile02">
                        </div>
                    </div>
                </div>                
                
                
                <div class="mb-3">
                    <div class="row g-2">
                        <div class="col-12">
                            <input type="file" class="form-control" id="inputGroupFile02">
                        </div>
                    </div>
                </div>                
                
                
                <div class="mb-3">
                    <div class="row g-2">
                        <div class="col-12">
                            <input type="file" class="form-control" id="inputGroupFile02">
                        </div>
                    </div>
                </div>                
                
                
                <div class="mb-3">
                    <div class="row g-2">
                        <div class="col-12">
                            <input type="file" class="form-control" id="inputGroupFile02">
                        </div>
                    </div>
                </div>                
                
                
                <div class="mb-3">
                    <div class="row g-2">
                        <div class="col-12">
                            <input type="file" class="form-control" id="inputGroupFile02">
                        </div>
                    </div>
                </div>                
                
                
                <div class="mb-3">
                    <div class="row g-2">
                        <div class="col-12">
                            <input type="file" class="form-control" id="inputGroupFile02">
                        </div>
                    </div>
                </div>                
                
                
                <div class="mb-3">
                    <div class="row g-2">
                        <div class="col-12">
                            <input type="file" class="form-control" id="inputGroupFile02">
                        </div>
                    </div>
                </div>                
                
                
                <div class="mb-3">
                    <div class="row g-2">
                        <div class="col-12">
                            <input type="file" class="form-control" id="inputGroupFile02">
                        </div>
                    </div>
                </div>                
                
                
<!--                  
<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12">
    <label for="telefone" class="form-label">Thumbnail:</label>
  <input type="file" class="form-control" id="inputGroupFile02">
</div>    
-->
                  

                            
    
               
                
              </div>
              
              

              <!-- Coluna 2 -->
              <div class="col-md-6">
                <h3>Atributos do Personagem</h3>
                
                <div class="mb-3">
                  <div class="row g-2">
                    <div class="col-6">
                      <input type="text" class="form-control" name="chave1" placeholder="Ex: Altura" required>
                    </div>
                    <div class="col-6">
                      <input type="text" class="form-control" name="valor1" placeholder="1.74 cm" required>
                    </div>
                  </div>
                </div>
                
                <div class="mb-3">
                  <div class="row g-2">
                    <div class="col-6">
                      <input type="text" class="form-control" name="chave1" placeholder="Ex: Peso" required>
                    </div>
                    <div class="col-6">
                      <input type="text" class="form-control" name="valor1" placeholder="58 kg" required>
                    </div>
                  </div>
                </div>
                
                <div class="mb-3">
                  <div class="row g-2">
                    <div class="col-6">
                      <input type="text" class="form-control" name="chave1" placeholder="Ex: Busto" required>
                    </div>
                    <div class="col-6">
                      <input type="text" class="form-control" name="valor1" placeholder="83 cm" required>
                    </div>
                  </div>
                </div>
               
                
                <div class="mb-3">
                  <div class="row g-2">
                    <div class="col-6">
                      <input type="text" class="form-control" name="chave1" placeholder="Ex: Cintura" required>
                    </div>
                    <div class="col-6">
                      <input type="text" class="form-control" name="valor1" placeholder="38 cm" required>
                    </div>
                  </div>
                </div>
                
                <div class="mb-3">
                  <div class="row g-2">
                    <div class="col-6">
                      <input type="text" class="form-control" name="chave1" placeholder="Ex: Quadril" required>
                    </div>
                    <div class="col-6">
                      <input type="text" class="form-control" name="valor1" placeholder="63 cm" required>
                    </div>
                  </div>
                </div>
                
                <div class="mb-3">
                  <div class="row g-2">
                    <div class="col-6">
                      <input type="text" class="form-control" name="chave1" placeholder="Ex: Estado Civil'" required>
                    </div>
                    <div class="col-6">
                      <input type="text" class="form-control" name="valor1" placeholder="Solteira" required>
                    </div>
                  </div>
                </div>
                
                <div class="mb-3">
                  <div class="row g-2">
                    <div class="col-6">
                      <input type="text" class="form-control" name="chave1" placeholder="Ex: Orietação Sexual" required>
                    </div>
                    <div class="col-6">
                      <input type="text" class="form-control" name="valor1" placeholder="Hétero" required>
                    </div>
                  </div>
                </div>                
                
                <div class="mb-3">
                  <div class="row g-2">
                    <div class="col-6">
                      <input type="text" class="form-control" name="chave1" placeholder="Ex: Nacionalidade" required>
                    </div>
                    <div class="col-6">
                      <input type="text" class="form-control" name="valor1" placeholder="Italiana" required>
                    </div>
                  </div>
                </div>
                
                <div class="mb-3">
                  <div class="row g-2">

                    <div class="col-6">
                    
                        <label for="fk_tema" class="form-label">Bandeira do Páis</label>
                        <select class="form-control campo-texto" id="fk_classificacao" name="fk_classificacao" required>
                            <option value="">Selecione um país</option>
                            <option value="1">Brasil</option>
                            <option value="2">Argentina</option>
                            <option value="3">Estados Unidos</option>
                            <option value="4">Canadá</option>
                            <option value="5">Alemanha</option>
                            <option value="6">França</option>
                            <option value="7">Itália</option>
                            <option value="8">Japão</option>
                            <option value="9">China</option>
                            <option value="10">Índia</option>
                            <option value="11">Austrália</option>
                            <option value="12">México</option>
                            <option value="13">Espanha</option>
                            <option value="14">Portugal</option>
                            <option value="15">Reino Unido</option>

                        </select>
                     
                    </div>
                  </div>
                </div>
              </div>            <!-- Observação -->
                    <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12">
                        <label for="obs" class="form-label">Observação:</label>
                        <textarea class="form-control campo-texto" rows="3" id="obs" name="obs" placeholder="" required>LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY. LOREM IPSUM HAS BEEN THE INDUSTRY'S STANDARD DUMMY TEXT EVER SINCE THE 1500S.</textarea>
                    </div>   
            </div>



          </div>
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="col-2 btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
        <button type="submit" class="col-2 btn btn-primary" form="form_cliente">Salvar</button>
      </div>

    </div>
  </div>
</div>
                
</div>                
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>    
</body>
</html>