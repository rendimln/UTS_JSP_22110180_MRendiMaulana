/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class Film {
    private String judul;
    private String genre;
    private String durasi;
    private int harga;
    private String[] jamTayang;
    private String gambar;


    public Film(String judul, String genre, String durasi, int harga, String[] jamTayang, String gambar) {
        this.judul = judul;
        this.genre = genre;
        this.durasi = durasi;
        this.harga = harga;
        this.jamTayang = jamTayang;
        this.gambar = gambar;
    }

    // ✅ Getter
    public String getJudul() {
        return judul;
    }

    public String getGenre() {
        return genre;
    }

    public String getDurasi() {
        return durasi;
    }

    public int getHarga() {
        return harga;
    }

    public String[] getJamTayang() {
        return jamTayang;
    }

    public String getGambar() {
        return gambar; // Getter gambar
    }
}
