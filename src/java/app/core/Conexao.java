package app.core;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    private static final String HOST = "localhost";
    private static final String PORTA = "5432";
    private static final String BANCO = "banco";
    private static final String USUARIO = "postgres";
    private static final String SENHA = "masterkey";

    private static final String URL = "jdbc:postgresql://" + HOST + ":" + PORTA + "/" + BANCO;

    private Connection conexao;

    public void abrirConexao() {
        try {
            Class.forName("org.postgresql.Driver");
            this.conexao = DriverManager.getConnection(URL, USUARIO, SENHA);
        } catch (ClassNotFoundException e) {
            System.out.println("Driver JDBC não encontrado: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Erro ao conectar ao banco: " + e.getMessage());
        }
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

    public Connection getConexao() {
        return this.conexao;
    }
}
