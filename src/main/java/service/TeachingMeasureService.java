package service;

import java.sql.SQLException;
import java.util.List;
import bean.TeachingMeasure;
import dao.TeachingMeasureDao;

public class TeachingMeasureService {
	public TeachingMeasure getCurMeasure() throws SQLException, ClassNotFoundException {
        TeachingMeasureDao TADao = new TeachingMeasureDao();
        TeachingMeasure measure = TADao.getCurMeasure();
        return measure;
    }

    public List<TeachingMeasure> showAllMeasures() throws SQLException, ClassNotFoundException {
        TeachingMeasureDao TAD = new TeachingMeasureDao();
        return TAD.showAllMeasure();
    }

    public int useMeasure(int measureId) throws SQLException, ClassNotFoundException {
        TeachingMeasureDao tad = new TeachingMeasureDao();
        return tad.useMeasure(measureId);
    }

    public int delMeasure(int measureId) throws SQLException, ClassNotFoundException {
        TeachingMeasureDao tad = new TeachingMeasureDao();
        return tad.delMeasure(measureId);
    }
    public void addMeasure(TeachingMeasure measure) throws SQLException, ClassNotFoundException {
        TeachingMeasureDao TAD = new TeachingMeasureDao();
        TAD.addMeasure(measure);
        return;
    }
}
