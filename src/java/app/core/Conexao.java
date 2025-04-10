package app.core;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    private final String host;
    private final String porta;
    private final String banco;
    private final String usuario;
    private final String senha;

    private Connection conexao;

    public Conexao(String host, String porta, String banco, String usuario, String senha) {
        this.host = host;
        this.porta = porta;
        this.banco = banco;
        this.usuario = usuario;
        this.senha = senha;
    }

    public Connection abrirConexao() {
        String url = "jdbc:postgresql://" + host + ":" + porta + "/" + banco;

        try {
            Class.forName("org.postgresql.Driver");
            this.conexao = DriverManager.getConnection(url, usuario, senha);
        } catch (ClassNotFoundException e) {
            System.out.println("Driver JDBC não encontrado: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Erro ao conectar ao banco: " + e.getMessage());
        }

        return this.conexao;
    }

    public void fecharConexao() {
        try {
            if (this.conexao != null && !this.conexao.isClosed()) {
                this.conexao.close();
            }
        } catch (SQLException e) {
            System.out.println("Erro ao fechar conexão: " + e.getMessage());
        }
    }
}
