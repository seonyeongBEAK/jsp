package review;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import review.ReviewDTO;

public class ReviewDAO {
   private static final ArrayList<ReviewDTO> dtos = null;
private static final String regdate = null;
private static ReviewDAO instance = new ReviewDAO();
   
   public static ReviewDAO getInstance() {//諛붽묑�뿉�꽌 LoginDAO �젒洹쇳븯湲� �쐞�븳
      return instance;
   }
   
   //而ㅻ꽖�뀡 ��
   private Connection getConnection() throws Exception {
      Connection con = null;
      
      try {
        //1. Context 媛앹껜 �깮�꽦
        Context initCtx = new InitialContext();

        //2. DataSource 媛앹껜 �깮�꽦
    	DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/shyu");

        //3. CP�뿉�꽌 connection 媛��졇�삤湲�
        con = ds.getConnection();
      }catch(Exception e) {
         e.printStackTrace();
      }return con;
   }
   
   //insertReview 由щ럭�옉�꽦
   public void insertReview(ReviewDTO dto) throws Exception{
      
      Connection con = null;
      PreparedStatement pstmt = null;
      
      try {
      
      //1. 而ㅻ꽖�뀡 �뼸湲�
      con = getConnection();
      
      //2. sql �옉�꽦
      
      String sql = "INSERT INTO RLiST VALUES(RList_seq.nextval,?,?,?,sysdate,?)";
    
      
      //3. sql 以�鍮� 
      pstmt = con.prepareStatement(sql); 
      pstmt.setString(1, dto.getTitle());
      pstmt.setString(2, dto.getPname());
      pstmt.setString(3, dto.getContent());
      pstmt.setString(4, dto.getId());
      
      //4. �떎�뻾
      pstmt.executeUpdate(); 
      }catch(Exception e) {
         e.printStackTrace();
      }finally {
         try {
            if(pstmt != null)pstmt.close();
            if(con != null)con.close();
         }catch(Exception e) {e.printStackTrace();}
      }
      
   }
   
   //listReview 由щ럭 �옉�꽦紐⑸줉
   public ArrayList<ReviewDTO> listReview() {
      ArrayList<ReviewDTO> dtos = new ArrayList<ReviewDTO>();
      Connection con = null;
      Statement stmt = null;
      ResultSet rs = null;
      
      try {
         con = getConnection();
         String sql = "SELECT * FROM RList";
         stmt = con.createStatement();
         rs = stmt.executeQuery(sql); 
         
         while(rs.next()) {
            int rno = rs.getInt("RNO");
            String title = rs.getString("TITLE");
            String pname = rs.getString("PNAME"); 
            String content = rs.getString("CONTENT");
            Timestamp regdate = rs.getTimestamp("REGDATE");
            String id = rs.getString("ID");
            
            
            ReviewDTO dto = new ReviewDTO(rno, title, pname, content, regdate, id); //ReviewDTO�뿉 �젅肄붾뱶 �깮�꽦
            dtos.add(dto);
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         try {
            if(rs != null)rs.close();
            if(stmt != null)stmt.close();
            if(con != null)con.close();
         }catch(Exception e) {e.printStackTrace();}
      }return dtos;
   }
   
   


   
   
   //updateReview 由щ럭�닔�젙
      public void updateReview(int rno, String title, String pname, String content) throws Exception {
         Connection con = null;
         PreparedStatement pstmt = null;
         
         try {
            con = getConnection();
   
            String sql = "UPDATE RLIST SET TITLE=?, PNAME=?, CONTENT=? WHERE RNO =?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, title);
            pstmt.setString(2, pname);
            pstmt.setString(3, content);
            pstmt.setInt(4, rno);
            pstmt.executeUpdate();
   
         } catch (Exception e) {
            e.printStackTrace();
         }finally {
            try {
               if(pstmt != null)pstmt.close();
               if(con != null)con.close();
            }catch(Exception e) {e.printStackTrace();}
         }
      }
      
      
      //deleteReview 由щ럭�궘�젣
            public void deleteReview(int rno) throws Exception {
               Connection con = null;
               PreparedStatement pstmt = null;
               
               try {
                  con = getConnection();
                  String sql = "DELETE FROM RList WHERE RNO =?";
                  pstmt = con.prepareStatement(sql);
                  pstmt.setInt(1, rno);
                  pstmt.executeUpdate();
         
               } catch (Exception e) {
                  e.printStackTrace();
               }finally {
                  try {
                     if(pstmt != null)pstmt.close();
                     if(con != null)con.close();
                  }catch(Exception e) {e.printStackTrace();}
               }
            }

    //寃뚯떆�뙋 �긽�꽭蹂닿린  
            public ReviewDTO selectBoard(int rno) {
                Connection con = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;
                ReviewDTO dto = new ReviewDTO();
                String sql = "select * from RLIST where RNO = ?";

                try {
                    con = getConnection();
                    pstmt = con.prepareStatement(sql);
                    pstmt.setInt(1, rno);
                    rs = pstmt.executeQuery();
                    if (rs.next()) {
                        dto.setRno(rno);
                        dto.setTitle(rs.getString("title"));
                        dto.setContent(rs.getString("content"));
                        dto.setPname(rs.getString("pname"));
                        dto.setRegdate(rs.getTimestamp("regdate")); 
                        dto.setId(rs.getString("id"));     
                    } 
                }catch (Exception e) {
                        e.printStackTrace();
                     }finally {
                        try {
                           if(pstmt != null)pstmt.close();
                           if(con != null)con.close();
                        }catch(Exception e) {e.printStackTrace();}
                        
                     }
                return dto;
            }
               


            public int getCount() {
            	Connection con = null;
            	Statement stmt = null;
            	ResultSet rs = null;
            	int count = 0;
            	try {
            		con = getConnection();
            		String sql = "SELECT COUNT(RNO) COUNT FROM RList";
            		stmt = con.createStatement();
            		rs = stmt.executeQuery(sql);
            		
            		if(rs.next()) 
            			count = rs.getInt("count");
            			
            	}catch(Exception e) {
            		e.printStackTrace();
            	}finally {
            		try {
            			if(rs!=null)rs.close();
            			if(stmt!=null)stmt.close();
            			if(con!=null)con.close();
            		}catch(Exception e) {
            			e.printStackTrace();
            		}
            	}
            	
            	return count;
            }
            public ArrayList<ReviewDTO> getListReview(int page, int numOfRecords) {
                ArrayList<ReviewDTO> dtos = new ArrayList<ReviewDTO>();
                Connection con = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;
                
                try {
                   con = getConnection();
                   String sql = "select * from (select rownum num, R.* from (select * from rlist order by rno)R)where num between ? and ?;";
                   pstmt = con.prepareStatement(sql);
                   pstmt.setInt(1, 1+page-1* numOfRecords);
                   pstmt.setInt(2, page* numOfRecords);
                   
                   rs = pstmt.executeQuery(); 
                   
                   while(rs.next()) {
                      int rno = rs.getInt("RNO");
                      String title = rs.getString("TITLE");
                      String pname = rs.getString("PNAME"); 
                      String content = rs.getString("CONTENT");
                      Timestamp regdate = rs.getTimestamp("REGDATE");
                      String id = rs.getString("ID");
                      
                      
                      ReviewDTO dto = new ReviewDTO(rno, title, pname, content, regdate, id); //ReviewDTO�뿉 �젅肄붾뱶 �깮�꽦
                      dtos.add(dto);
                   }
                } catch (Exception e) {
                   e.printStackTrace();
                }finally {
                   try {
                      if(rs != null)rs.close();
                      if(pstmt != null)pstmt.close();
                      if(con != null)con.close();
                   }catch(Exception e) {e.printStackTrace();}
                }return dtos;
             }
             
   
}
   
   
   
   
   
   
   
   
   
   
   


