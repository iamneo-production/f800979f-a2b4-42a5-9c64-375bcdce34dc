package service;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import model.Topic;
public class TopicDao {
    private static Connection conn =null;

    public TopicDao(Connection connection) {
    }

    public static void create(){
        boolean bool ;
        try {
			
			
			Class.forName("com.mysql.jdbc.Driver");
            //DriverManager.registerDriver(com.mysql.jdbc.Driver());	
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/notes","root","examly");//connection url
			Statement st = conn.createStatement();
			String createTable = "CREATE TABLE NOTES.STICKYNOTES ("
									+ "TOPICID INT NOT NULL AUTO_INCREMENT,"
									+" TOPICNAME VARCHAR(255) NOT NULL, "
									+" TOPICDESCRIPTION VARCHAR(255) NOT NULL,"
									+" DATE DATE NOT NULL,"
									+" PRIMARY KEY(TOPICID))";
            bool = st.execute(createTable);
            
		}catch(Exception e) {
			e.printStackTrace();
		}
        return bool;
    }

    public static int addTopic(Topic top){
        
        int result=0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/notes", "root", "examly");
            
        
            PreparedStatement pst = conn.prepareStatement("INSERT INTO NOTES.STICKYNOTES(TOPICNAME,TOPICDESCRIPTION, DATE ) VALUES(?,?,?)");
            pst.setString(1, top.getTopicName());
            pst.setString(2, top.getTopicDescription());
            pst.setString(3, top.getDate());
            result = pst.executeUpdate();
           
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    public static List<Topic> viewTopicById(){
        List<Topic> topics = new ArrayList<Topic>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/notes", "root", "examly");
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery("SELECT * FROM notes.stickynotes");
            while(rs.next()){
                Topic t = new Topic();
                t.setId(rs.getInt("topicid"));
                t.setTopicName(rs.getString("topicDescription"));
                t.setTopicDescription(rs.getString("topicDescription"));
                t.setDate(rs.getString("date"));
                topics.add(t);
            

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return topics;
    }
    public boolean deleteTopic(int topicid) {
		boolean flag=false;
		try {
			String query = "delete from notes where noteId=?";
			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, topicid);
			psmt.executeUpdate();
			flag=true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	//method to updates
	
	public boolean updateTopic(Topic top, int id) {
		boolean flag=false;
		try {
			String query="UPDATE notes SET noteTitle=?,"
					+ "noteDesc=? WHERE noteId=?";
			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setString(1, top.getTopicName());
			psmt.setString(2, top.getTopicDescription());
			psmt.setInt(3, id);
			
			psmt.executeUpdate();
			flag=true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
}
