/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Position {

    private int id;
    private String recengy;

    public Position(int id, String recengy) {
        this.id = id;
        this.recengy = recengy;
    }

    public Position() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRecengy() {
        return recengy;
    }

    public void setRecengy(String recengy) {
        this.recengy = recengy;
    }

}
