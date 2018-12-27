package service;

import bean.WeChat;
import dao.WeChatDao;

import java.sql.SQLException;
import java.util.List;

public class WeChatService {
    public void addPhoto(WeChat wechat) throws SQLException, ClassNotFoundException {
        WeChatDao Dao = new WeChatDao();
        Dao.addPhoto(wechat);
        return;
    }
    public List<WeChat> showAllPhotos() throws SQLException, ClassNotFoundException {
        WeChatDao Dao = new WeChatDao();
        return Dao.showAllPhoto();
    }
}
