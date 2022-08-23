/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Staff;
import model.TimeSheet;

/**
 *
 * @author Admin
 */
public class TimeSheetDBContext extends DBContext {

    public ArrayList<Staff> getStaff() {
        ArrayList<Staff> staffs = new ArrayList<>();
        try {
            String sql = "SELECT e.[sid], e.sname, p.regency, \n"
                    + "e.d1, e.d2, e.d3, e.d4, e.d5, e.d6, e.d7, e.d8, e.d9, e.d10,\n"
                    + "e.d11, e.d12, e.d13, e.d14, e.d15, e.d16, e.d17, e.d18, e.d19, e.d20,\n"
                    + "e.d21, e.d22, e.d23, e.d24, e.d25, e.d26, e.d27, e.d28, e.d29, e.d30\n"
                    + "FROM (SELECT s.sname, t.*, s.id_regency FROM Staff s, Timesheet t\n"
                    + "WHERE s.[sid]=t.[sid]) e\n"
                    + "INNER JOIN Position p ON e.id_regency = p.id_regency";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Staff s = new Staff();
                s.setId(rs.getInt("sid"));
                s.setName(rs.getString("sname"));
                s.setRegency(rs.getString("regency"));
                TimeSheet ts = new TimeSheet();
                for (int i = 1; i <= 30; i++) {
                    ts.getListDay().add(rs.getBoolean("d" + i));
                }
                s.setTimesheet(ts);
                staffs.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(TimeSheetDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return staffs;
    }
}
