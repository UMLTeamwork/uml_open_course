package service;

import java.sql.SQLException;
import java.util.List;
import bean.TeachingContent;
import dao.TeachingContentDao;

public class TeachingContentService {
    public TeachingContent getCurContent() throws SQLException, ClassNotFoundException {
        TeachingContentDao TADao = new TeachingContentDao();
        TeachingContent content = TADao.getCurContent();
        return content;
    }

    public List<TeachingContent> showAllContents() throws SQLException, ClassNotFoundException {
        TeachingContentDao TAD = new TeachingContentDao();
        return TAD.showAllContent();
    }

    public int useContent(int contentId) throws SQLException, ClassNotFoundException {
        TeachingContentDao tad = new TeachingContentDao();
        return tad.useContent(contentId);
    }

    public int delContent(int contentId) throws SQLException, ClassNotFoundException {
        TeachingContentDao tad = new TeachingContentDao();
        return tad.delContent(contentId);
    }
    public void addContent(TeachingContent content) throws SQLException, ClassNotFoundException {
        TeachingContentDao TAD = new TeachingContentDao();
        TAD.addContent(content);
        return;
    }
}
