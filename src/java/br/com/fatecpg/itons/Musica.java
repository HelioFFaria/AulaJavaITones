/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.itons;

/**
 *
 * @author a
 */
public class Musica {
    private String nome;
    private int duração;
    private String gênero;
    private String autoria;

    public Musica() {
    }

    public Musica(String nome, int duração, String gênero, String autoria) {
        this.nome = nome;
        this.duração = duração;
        this.gênero = gênero;
        this.autoria = autoria;
    }

    public Disco getDisco() {
        return Db.getDisco(this);
    }
    
    public Artista getArtista() {
        return getDisco().getArtista();
    }
    
    public String getAutoria() {
        return autoria;
    }

    public void setAutoria(String autoria) {
        this.autoria = autoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getDuração() {
        return duração;
    }

    public void setDuração(int duração) {
        this.duração = duração;
    }

    public String getGênero() {
        return gênero;
    }

    public void setGênero(String gênero) {
        this.gênero = gênero;
    }
    
    
}
