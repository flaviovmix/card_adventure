package org.apache.jsp.entidades;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class FormCadastroCard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"ISO-8859-1\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("        <link href=\"../assets/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"../assets/forms/style.css\" rel=\"stylesheet\">        \n");
      out.write("    </head>\n");
      out.write("    <body>      \n");
      out.write("        <div class=\"container-xl\">\n");
      out.write("\n");
      out.write("            <form id=\"form_cliente\" method=\"post\" action=\"salvarAluno.jsp\">\n");
      out.write("                <h2>CADASTRO DE ALUNO</h2>  \n");
      out.write("                <fieldset class=\"row g-3 cadastro\">\n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-4 col-xl-4 col-lg-6 col-md-6 col-sm-8\">\n");
      out.write("                        <label for=\"nome\" class=\"form-label\">Nome completo:</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control campo-texto\" id=\"nome\" name=\"nome\" placeholder=\"\" value=\"Flávio José dos Passos\" required>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-4\">\n");
      out.write("                        <label for=\"telefone\" class=\"form-label\">Telefone:</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control campo-texto\" id=\"telefone\" name=\"telefone\" placeholder=\"\" value=\"(21) 9 8223-4471\" required>\n");
      out.write("                    </div>  \n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-4\">\n");
      out.write("                        <label for=\"cpf\" class=\"form-label\">CPF:</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control campo-texto\" id=\"cpf\" name=\"cpf\" placeholder=\"\" value=\"114.897.999-83\" required>\n");
      out.write("                    </div>  \n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-4\">\n");
      out.write("                        <label for=\"rg\" class=\"form-label\">RG:</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control campo-texto\" id=\"rg\" name=\"rg\" placeholder=\"\" value=\"114.897.999-83\" required>\n");
      out.write("                    </div>  \n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-4\">\n");
      out.write("                        <label for=\"data_nascimento\" class=\"form-label\">Data Nasc.:</label>\n");
      out.write("                        <input type=\"date\" class=\"form-control campo-texto\" id=\"data_nascimento\" name=\"data_nascimento\" placeholder=\"\" value=\"1982-11-05\" required>\n");
      out.write("                    </div>     \n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-3 col-xl-3 col-lg-6 col-md-6 col-sm-9\">\n");
      out.write("                        <label for=\"email\" class=\"form-label\">E-mail:</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control campo-texto\" id=\"email\" name=\"email\" placeholder=\"\" value=\"flaviovmix@gmail\" required>\n");
      out.write("                    </div>   \n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-3\">\n");
      out.write("                        <label for=\"cep\" class=\"form-label\">CEP:</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control campo-texto\" id=\"cep\" name=\"cep\" placeholder=\"\" value=\"29785-000\" required>\n");
      out.write("                    </div>  \n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-6 col-xl-6 col-lg-9 col-md-9 col-sm-12\">\n");
      out.write("                        <label for=\"endereco\" class=\"form-label\">Endereço:</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control campo-texto\" id=\"endereco\" name=\"endereco\" placeholder=\"\" value=\"AV DAS AMERICAS, BARRA DA TIJUCA - BLOCO 4 SALA 107\" required>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-1 col-xl-1 col-lg-2 col-md-2 col-sm-3\">\n");
      out.write("                        <label for=\"numero\" class=\"form-label\">Número:</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control campo-texto\" id=\"numero\" name=\"numero\" placeholder=\"\" value=\"1650\" required>\n");
      out.write("                    </div>   \n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-4 col-xl-4 col-lg-7 col-md-7 col-sm-9\">\n");
      out.write("                        <label for=\"cidade\" class=\"form-label\">Cidade:</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control campo-texto\" id=\"cidade\" name=\"cidade\" placeholder=\"\" value=\"SÃO GABRIEL DA PALHA\" required>\n");
      out.write("                    </div>              \n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-4\">\n");
      out.write("                        <label for=\"estado\" class=\"form-label\">Estado:</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control campo-texto\" id=\"estado\" name=\"estado\" placeholder=\"\" value=\"ES\" required>\n");
      out.write("                    </div>                 \n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-5 col-xl-5 col-lg-12 col-md-12 col-sm-8\">\n");
      out.write("                        <label for=\"conjuge\" class=\"form-label\">Conjuge:</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control campo-texto\" id=\"conjuge\" name=\"conjuge\" placeholder=\"\" value=\"Adriely Baldo Sotele dos Passos\" required>\n");
      out.write("                    </div>  \n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-12 col-xl-12 col-lg-12 col-md-12\">\n");
      out.write("                        <label for=\"obs\" class=\"form-label\">Observação:</label>\n");
      out.write("                        <textarea class=\"form-control campo-texto\" rows=\"3\" id=\"obs\" name=\"obs\" placeholder=\"\" required>LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY. LOREM IPSUM HAS BEEN THE INDUSTRY'S STANDARD DUMMY TEXT EVER SINCE THE 1500S.</textarea>\n");
      out.write("                    </div>     \n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <!--quebra de linha no form-->\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-3\">\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary link-botao\">Salvar</button>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-3\">\n");
      out.write("                        <a class=\"btn btn-secondary link-botao\" href=\"listarAluno.jsp\">Cancelar</a>\n");
      out.write("                    </div>\n");
      out.write("                </fieldset>\n");
      out.write("            </form>\n");
      out.write("    </div>\n");
      out.write("    <script src=\"../../assets/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        const formProduto = document.getElementById('form_cliente');\n");
      out.write("\n");
      out.write("        formProduto.addEventListener('submit', (event) => {\n");
      out.write("            const dateInput = document.getElementById('data_nascimento');\n");
      out.write("            const dateValue = dateInput.value; // Data no formato 'yyyy-MM-dd'\n");
      out.write("\n");
      out.write("            if (dateValue.includes('/')) {\n");
      out.write("                // Substituir barras por traços\n");
      out.write("                dateInput.value = dateValue.replace(/\\//g, '-');\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("        \n");
      out.write("        document.addEventListener(\"DOMContentLoaded\", function () {\n");
      out.write("            document.getElementById(\"nome\").focus();\n");
      out.write("        });        \n");
      out.write("    </script>        \n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
