package model;

import java.util.ArrayList;
import java.util.List;

public class Personagem {
    
    private String nome;
    private String imagem;
    private List<Atributo> atributos = new ArrayList<>();
    private String observacoes;
    
    public Personagem(String nome, String imagem) {
        this.nome = nome;
        this.imagem = imagem;
    }
    
    public String getNome() {
        return nome;
    }

    public String getImagem() {
        return imagem;
    }    
    
    public List<Atributo> getAtributos() {
        return atributos;
    }
    
    public void addAtributo(String chave, String valor) {
        if("obs".equals(chave)) {
            observacoes = valor;
        } else {
            atributos.add(new Atributo(chave, valor));
        }
    }
    
    public String getObservacoes() {
        return observacoes;
    }
    
}
