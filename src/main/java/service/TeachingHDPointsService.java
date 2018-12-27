package service;

import bean.TeachingPoints;
import dao.TeachingHDPointsDao;

import java.sql.SQLException;
import java.util.List;

/**
 * @authoor yangyuze
 * @create 2018-12-24 20:18
 */
public class TeachingHDPointsService {
    public TeachingPoints getCurPoint() throws SQLException, ClassNotFoundException {
        TeachingHDPointsDao TPDao = new TeachingHDPointsDao();
        TeachingPoints point = TPDao.getCurPoint();
        return point;
    }

    public List<TeachingPoints> showAllPoints() throws SQLException, ClassNotFoundException {
        TeachingHDPointsDao TPD = new TeachingHDPointsDao();
        return TPD.showAllPoints();
    }

    public int usePoint(int pointId) throws SQLException, ClassNotFoundException {
        TeachingHDPointsDao tpd = new TeachingHDPointsDao();
        return tpd.usePoint(pointId);
    }

    public int delPoint(int pointId) throws SQLException, ClassNotFoundException {
        TeachingHDPointsDao tpd = new TeachingHDPointsDao();
        return tpd.delPoint(pointId);
    }
    public void addPoint(TeachingPoints point) throws SQLException, ClassNotFoundException {
        TeachingHDPointsDao TPD = new TeachingHDPointsDao();
        TPD.addPoint(point);
        return;
    }
}
