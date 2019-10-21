/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.ProjMusic;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/**
 *
 * @author a
 */
public class Db {
   private static ArrayList<Artista> artistas;
   
   public static int getArtistaIndex(Artista artista){
       return artistas.indexOf(artista);
   }
   
   public static ArrayList<Artista> getArtistas(){
    if(artistas == null){
        artistas = new ArrayList<>();
        Musica a1m1 = new Musica("Everybody's Changing", 250, "Pop Rock", "Tom Chaplin, Tim Rice-Oxley");
        Musica a1m2 = new Musica("Somewhere Only We Know", 214, "Pop Rock", "Tom Chaplin, Tim Rice-Oxley");
        Disco a1d1 = new Disco("Hopes and Fears", 2004, "Island Records");
        a1d1.getMusicas().add(a1m1);
        a1d1.getMusicas().add(a1m2);
        Musica a1m3 = new Musica("Silenced by the Night", 190, "Pop Rock", "Tom Chaplin, Tim Rice-Oxley");
        Musica a1m4 = new Musica("Sovereign Light Café", 203, "Pop Rock", "Tom Chaplin, Tim Rice-Oxley");
        Disco a1d2 = new Disco("Strangeland", 2012, "Island Records");
        a1d2.getMusicas().add(a1m3);
        a1d2.getMusicas().add(a1m4);
        Artista a1 = new Artista("Keane", "Rock", new String[]{"Tom Chaplin", "Tim Rice-Oxley", "Richard Hughes", "Jesse Quin"});
        a1.getDiscos().add(a1d1);
        a1.getDiscos().add(a1d2);
        artistas.add(a1);
        
        Musica a2m1 = new Musica("Indestructible", 263, "Heavy Metal", "Dan Donegan, Mike Wengren");
        Musica a2m2 = new Musica("Inside the Fire", 211, "Heavy Metal", "Dan Donegan, David Draiman");
        Disco a2d1 = new Disco("Indestructible", 2008, "Reprise Records");
        a2d1.getMusicas().add(a2m1);
        a2d1.getMusicas().add(a2m2);
        Artista a2 = new Artista("Disturbed", "Heavy Metal", new String[]{"Dan Donegan", "Mike Wengren", "David Draiman", "John Moyer"});
        a2.getDiscos().add(a2d1);
        artistas.add(a2);

        Musica a3m1 = new Musica("I Was Made for Lovin' You", 258, "Hard Rock", "Paul Stanley, Vini Poncia");
        Musica a3m2 = new Musica("Sure Know Something", 214, "Hard Rock", "Paul Stanley, Vini Poncia");
        Disco a3d1 = new Disco("Dynasty", 1979, "Casablanca Records");
        a3d1.getMusicas().add(a3m1);
        a3d1.getMusicas().add(a3m2);
        Artista a3 = new Artista("KISS", "Heavy Metal", new String[]{"Paul Stanley", "Gene Simmons", "Eric Singer", "Tommy Thayer"});
        a3.getDiscos().add(a3d1);
        artistas.add(a3);
    }
    Collections.sort(artistas, new Comparator<Artista>() {
            @Override
            public int compare(Artista o1, Artista o2) {
                return o1.getNome().compareTo(o2.getNome( ));
            }
        });
    return artistas;
}
   
   public static Artista getArtista(Disco disco){
       for(Artista artista: getArtistas()){
           for(Disco discoDoArtista: artista.getDiscos()){
               if(disco.equals(discoDoArtista)){
                   return artista;
               }
           }
           
       }
       return null;
   }
   
   public static ArrayList<Disco> getDisco(){
       ArrayList<Disco> discos = new ArrayList<>();
       for(Artista artista: getArtistas()){
           for(Disco disco: artista.getDiscos()){
               discos.add(disco);
           }
           
       }
       Collections.sort(discos, new Comparator<Disco>() {
            @Override
            public int compare(Disco o1, Disco o2) {
                return o1.getNome().compareTo(o2.getNome( ));
            }
        });
       return discos;
   }
   
    public static ArrayList<Musica> getMusicas(){
       ArrayList<Musica> musicas = new ArrayList<>();
       for(Artista artista: getArtistas()){
           for(Disco disco: artista.getDiscos()){
               for(Musica música: disco.getMusicas()){
                   musicas.add(música);
               }
               
           }
           
       }
        Collections.sort(musicas, new Comparator<Musica>() {
            @Override
            public int compare(Musica o1, Musica o2) {
                return o1.getNome().compareTo(o2.getNome( ));
            }
        });
       return musicas;
   }

    public static Disco getDisco(Musica musica){
        for(Disco disco: getDisco()){
            for(Musica musicaDoDisco: disco.getMusicas()){
                if(musica.equals(musicaDoDisco)){
                    return disco;
                }
            }
        }
        
        return null;
    }
}    