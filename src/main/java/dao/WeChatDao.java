package dao;
import java.sql.ResultSet;
import bean.WeChat;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import java.text.SimpleDateFormat;

public class WeChatDao {
    public void addPhoto(WeChat wechat) throws SQLException, ClassNotFoundException{
        DatabaseDao dao = new DatabaseDao();
        String sql = "insert into uml_teaching_WeChat(date,imageUrl) values('" + new SimpleDateFormat("yyyy-MM-dd").format(wechat.getPublish_time()) + "','" + wechat.getSrc() + "')";
        dao.update(sql);
    }

    public List<WeChat> showAllPhoto() throws SQLException, ClassNotFoundException {
        List<WeChat> weChatList = new ArrayList<>();
        DatabaseDao dao = new DatabaseDao();
        String sql = "select * from uml_teaching_WeChat";
        dao.query(sql);
        ResultSet rs = dao.getRs();
        while (rs.next()){
            WeChat photo = new WeChat();
            photo.setId(rs.getInt("Id"));
            photo.setSrc(rs.getString("imageUrl"));
            photo.setPublish_time(rs.getTimestamp("date"));
            weChatList.add(photo);
        }
        dao.close();
        return weChatList;
    }

}
