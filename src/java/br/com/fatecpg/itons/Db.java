/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.itons;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/**
 *
 * @author a
 */
public class Db {
    private static ArrayList<Artista> artistas;
    public static ArrayList<Artista> getArtistas(){
        if(artistas == null){
            artistas = new ArrayList<>();
            Musica a1m1 = new Musica("O papa é pop", 190, "Rock", "Humberto G.");
            Musica a1m2 = new Musica("Pra ser sincero", 181, "Rock", "Humberto G.");
            Disco a1d1 = new Disco("O papa é pop", 1990, "BMG");
            a1d1.getMusicas().add(a1m1);
            a1d1.getMusicas().add(a1m2);
            Artista a1 = new Artista("Engenheiros do Hawaii", "Rock",
                            new String[]{"humberto G.", "Carlos Stein", "Carlos Maltz"});
            a1.getDiscos().add(a1d1); 
            artistas.add(a1);
            Musica a2m1 = new Musica("Sweet Child of Mine", 480, "Rock","Axl, Slash");
            Musica a2m2 = new Musica("November Rain", 510, "Rock", "Axl, Slash");
            Disco a2d1 = new Disco("Apetite do Destruction", 1987, "Geffen");
            a2d1.getMusicas().add(a2m1);
            a2d1.getMusicas().add(a2m2); 
            Musica a2m3 = new Musica("Civil War", 385, "Rock", "Axl, Slash");
            Musica a2m4 = new Musica(" Don't Cry", 410, "Rock", "Axl, Slah");
            Disco a2d2 = new Disco("Use your Illusion II", 1992, "Virgin");
            a2d2.getMusicas().add(a2m3);
            a2d2.getMusicas().add(a2m4);
            Artista a2 = new Artista("Guns 'n Roses", "Rock",
                            new String[]{"Axl", "Slash"});
            a2.getDiscos().add(a2d1);
            a2.getDiscos().add(a2d2);
            artistas.add(a2);
            
        }
        return artistas;
    }
    
    public static Artista getArtista(Disco disco){
        for(Artista artista: getArtistas()){
            for(Disco discoDoArtista: artista.getDiscos()){
                if(disco.equals(discoDoArtista)) {
                    return artista;
                }
            }
        }
        return null;
    }
    
    public static ArrayList<Disco> getDisco(){
        ArrayList<Disco> discos = new ArrayList();
        for(Artista artista: getArtistas()){
            for(Disco disco: artista.getDiscos()){
                discos.add(disco);
            }
        }
        return discos;
    }
    
    public static ArrayList<Musica> getMusicas(){
        ArrayList<Musica> musicas = new ArrayList();
        for(Artista artista: getArtistas()){
            for(Disco disco: artista.getDiscos()){
                for(Musica música: disco.getMusicas()){
                    musicas.add(música);
                }
            }
        }
        Collections.sort(musicas, new Comparator<Musica> () {
            @Override
            public int compare(Musica o1, Musica o2) {
                return o1.getNome().compareTo(o2.getNome());
            }
        });
        return musicas;
    }
    
    public static Disco getDisco(Musica musica) {
        for (Disco disco: getDisco()) {
            for(Musica musicaDoDisco: disco.getMusicas()) {
                if(musica.equals(musicaDoDisco)) {
                    return disco;
                }
            }
        }
        return null;
    }
}
