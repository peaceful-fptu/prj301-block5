/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class TimeSheet {
    private int id;
    private ArrayList<Boolean> ListDay = new ArrayList<>();
    

    public int getWorkDays(){
        int count = 0;
        for (Boolean l : ListDay) {
            if(l){
                count++;
            }
        }
        return count;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ArrayList<Boolean> getListDay() {
        return ListDay;
    }

    public void setListDay(ArrayList<Boolean> ListDay) {
        this.ListDay = ListDay;
    }

    public TimeSheet(int id) {
        this.id = id;
    }

    public TimeSheet() {
    }

}
