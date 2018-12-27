package service;

import bean.LeaveMsg;
import bean.TeachingGeneral;
import bean.TeachingPlan;
import dao.TeachingArrangementDao;

import java.sql.SQLException;
import java.util.List;

/**
 * @authoor linzerong
 * @create 2018-12-23 12:14
 */
public class TeachingArrangementService {
    public TeachingPlan getCurPlan() throws SQLException, ClassNotFoundException {
        TeachingArrangementDao TADao = new TeachingArrangementDao();
        TeachingPlan plan = TADao.getCurPlan();
        return plan;
    }

    public List<TeachingPlan> showAllPlans() throws SQLException, ClassNotFoundException {
        TeachingArrangementDao TAD = new TeachingArrangementDao();
        return TAD.showAllPlans();
    }

    public int usePlan(int planId) throws SQLException, ClassNotFoundException {
        TeachingArrangementDao tad = new TeachingArrangementDao();
        return tad.usePlan(planId);
    }

    public int delPlan(int planId) throws SQLException, ClassNotFoundException {
        TeachingArrangementDao tad = new TeachingArrangementDao();
        return tad.delPlan(planId);
    }
    public void addPlan(TeachingPlan plan) throws SQLException, ClassNotFoundException {
        TeachingArrangementDao TAD = new TeachingArrangementDao();
        TAD.addPlan(plan);
        return;
    }

    public void addLeaveMsg(String leaveMsgContent) throws SQLException, ClassNotFoundException {
        TeachingArrangementDao TAD = new TeachingArrangementDao();
        TAD.addleaveMsg(leaveMsgContent);
    }

    public List<LeaveMsg> showAllLeaveMsgs() throws SQLException, ClassNotFoundException {
        TeachingArrangementDao TAD = new TeachingArrangementDao();
        return TAD.showAllLeaveMsgs();
    }

    public int delLeaveMsg(int planId) throws SQLException, ClassNotFoundException {
        TeachingArrangementDao tad = new TeachingArrangementDao();
        return tad.delLeaveMsg(planId);
    }

    // ***************************************
    public TeachingGeneral getCurGeneral() throws  SQLException, ClassNotFoundException{
        TeachingArrangementDao TADao = new TeachingArrangementDao();
        TeachingGeneral general = TADao.getCurGeneral();
        return general;
    }

    public List<TeachingGeneral> showAllGenerals() throws SQLException, ClassNotFoundException {
        TeachingArrangementDao TAD = new TeachingArrangementDao();
        return TAD.showAllGenerals();
    }

    public int useGeneral(int generalId) throws SQLException, ClassNotFoundException {
        TeachingArrangementDao tad = new TeachingArrangementDao();
        return tad.useGeneral(generalId);
    }

    public int delGeneral(int generalId) throws SQLException, ClassNotFoundException {
        TeachingArrangementDao tad = new TeachingArrangementDao();
        return tad.delGeneral(generalId);
    }

    public void addGeneral(TeachingGeneral general) throws SQLException, ClassNotFoundException {
        TeachingArrangementDao TAD = new TeachingArrangementDao();
        TAD.addGeneral(general);
        return;
    }
}
