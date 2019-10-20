/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.ProjMusic;

import java.util.ArrayList;

/**
 *
 * @author a
 */
public class Disco {
    private String nome;
    private int ano;
    private String gravadora;
    private ArrayList<Musica> musicas = new ArrayList<>();

    public Disco() {
    }

    public Disco(String nome, int ano, String gravadora) {
        this.nome = nome;
        this.ano = ano;
        this.gravadora = gravadora;
    }
    
    public Artista getArtista() {
        return Db.getArtista(this);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public String getGravadora() {
        return gravadora;
    }

    public void setGravadora(String gravadora) {
        this.gravadora = gravadora;
    }

    public ArrayList<Musica> getMusicas() {
        return musicas;
    }

    public void setMusicas(ArrayList<Musica> musicas) {
        this.musicas = musicas;
    }

    
    
}
