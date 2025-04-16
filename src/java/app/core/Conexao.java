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

    public Conexao(String banco) {
        this.host = "localhost";
        this.porta = "5432";
        this.banco = banco;
        this.usuario = "postgres";
        this.senha = "masterkey";
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
