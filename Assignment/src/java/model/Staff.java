/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Staff {

    private int id;
    private String name;
    private String regency;
    private TimeSheet timesheet;
    TimeSheet t = new TimeSheet();

    public double getSalary() {
       if(regency.equalsIgnoreCase("CB QHKH")){
           return 800000*timesheet.getWorkDays()/13;
       }else
           return 500000*timesheet.getWorkDays()/13;
    }

    public TimeSheet getTimesheet() {
        return timesheet;
    }

    public void setTimesheet(TimeSheet timesheet) {
        this.timesheet = timesheet;
    }

    public Staff() {
    }

    public Staff(int id, String name, String regency, TimeSheet timesheet) {
        this.id = id;
        this.name = name;
        this.regency = regency;
        this.timesheet = timesheet;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRegency() {
        return regency;
    }

    public void setRegency(String regency) {
        this.regency = regency;
    }

}
