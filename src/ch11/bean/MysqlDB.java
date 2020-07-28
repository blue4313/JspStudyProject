package ch11.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MysqlDB {

	private String id;
	private String passwd;
	private String name;
	
	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * @return the passwd
	 */
	public String getPasswd() {
		return passwd;
	}
	/**
	 * @param passwd the passwd to set
	 */
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	private static Connection mysqlDBConnecton() {
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/jspbeginner";
		String dbId = "jspid";
		String dbPass = "jsppass";
		
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try { 
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return conn;
	}
	
	public void insertMember() throws SQLException {
		
		Connection conn = MysqlDB.mysqlDBConnecton();
		PreparedStatement pstmt = null;
		
		String sql = "insert into member values (?, ?, ?, ?)";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, getId());
		pstmt.setString(2, getPasswd());
		pstmt.setString(3, getName());
		pstmt.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
		
		pstmt.executeUpdate();
		
		if (pstmt != null) try {pstmt.close();} catch(SQLException sqle) {}
		if (conn != null) try {conn.close();} catch(SQLException sqle) {}

	}
	
	public List<Map<String, Object>> selectMember() throws SQLException {
		
		//Map<String, Object> map = new HashMap<String, Object>();
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		
		Connection conn = MysqlDB.mysqlDBConnecton();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from member order by reg_date desc";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		
		try {
            
            if( rs.next() ){
                do{
                	Map<String, Object> map = new HashMap<String, Object>();
                     
                    ResultSetMetaData rsMD= rs.getMetaData();
                    int rsMDCnt = rsMD.getColumnCount();
                    for(int i =1; i <= rsMDCnt; i++ ) {                   
                        String column = rsMD.getColumnName(i).toLowerCase();
                        String value  = rs.getString(column);
                                             
                        map.put(column, value);
                    }
                    
                    System.out.println(map);
                     
                    list.add(map);
                }while( rs.next() );
                 
                System.out.println(list);
                
            }else{
                list = java.util.Collections.EMPTY_LIST;
            }
             
             
        }catch (Exception e) {                
            list = null;
        }
		
		if (rs != null) try {rs.close();} catch(SQLException sqle){}
		if (pstmt != null) try {pstmt.close();} catch(SQLException sqle) {}
		if (conn != null) try {conn.close();} catch(SQLException sqle) {}
         
        return list;
		
		/*
		 * while(rs.next()) { String dbId = rs.getString("id"); String dbPasswd =
		 * rs.getString("passwd"); String dbName = rs.getString("name"); Timestamp
		 * dbRegister = rs.getTimestamp("reg_date");
		 * 
		 * map.put("id", dbId); map.put("passwd", dbPasswd); map.put("name", dbName);
		 * map.put("register", dbRegister);
		 * 
		 * System.out.println(map);
		 * 
		 * for( Map.Entry<String, Object> elem : map.entrySet() ){
		 * //out.println(elem.getKey() + " : " + elem.getValue() + "<br>");
		 * list.add((Map<String, Object>) elem.getValue()); } }
		 * 
		 * 
		 * 
		 * System.out.println(list);
		 * 
		 * return list;
		 */
		
	}
}
