package dao;

import java.sql.*;
import model.Application;

public class ApplicationDAO {

    public static boolean applyToJob(Application app) {
        try (Connection conn = DBUtil.getConnection()) {
            String sql = "INSERT INTO applications (user_id, job_id) VALUES (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, app.getUserId());
            stmt.setInt(2, app.getJobId());
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
