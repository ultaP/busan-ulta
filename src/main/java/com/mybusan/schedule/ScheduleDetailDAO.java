package com.mybusan.schedule;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mybusan.place.PlaceDTO;




@Repository
public class ScheduleDetailDAO {
	
    @Autowired
    private JdbcTemplate jt;
    
    private ResultSet rs=null;
    private StringBuilder sql=null;
    
    @Autowired
    SqlSession sqlSession;
    
    
    public ScheduleDetailDAO() {
        System.out.println("-----sDAO()객체 생성됨");
    }//end
    
    

    public void detailinsert(List<String> placelist) {
       	
   		sqlSession.insert("schedule.insList", placelist);
   		
   	}//insert() end
    
    
    public int createSD(ScheduleDetailDTO dto, int s_no) {
        int cnt = 0;
        try {
            sql = new StringBuilder();         
            sql.append(" INSERT INTO s_detail(s_no, p_code) ");
            sql.append(" VALUES( "+s_no+", ? ) ");
                               
            cnt=jt.update(sql.toString(),dto.getS_no(), dto.getP_code());
        } catch (Exception e) {
            System.out.println("일정 등록 실패"+e);
        }//end
        
        return cnt;
        
    }//create() end
    
    public int createS(ScheduleDTO dto) {
        int cnt = 0;
        try {
            sql = new StringBuilder();         
            sql.append(" INSERT INTO schedule(user_id, s_title, s_content, s_rdate, s_startdate, s_enddate) ");
            sql.append(" VALUES( ?,?,?,now(),?,?) ");
                               
            cnt=jt.update(sql.toString(),dto.getUser_id(), dto.getS_title(), dto.getS_content(),dto.getS_startdate(),dto.getS_enddate());
        } catch (Exception e) {
            System.out.println("일정 불러오기 실패"+e);
           
        }//end
        
        return cnt;
        
    }//create() end
    
    
    public List<Map<String, Object>> list(int pageNum){
		return sqlSession.selectList("schedule.list",(pageNum-1)*10);
	}

//    public List<ScheduleDTO> list() {
//        List<ScheduleDTO> list=null;
//        try {
//            sql=new StringBuilder();
//            sql.append(" SELECT s_no, user_id, s_title, s_content, s_rdate, s_startdate, s_enddate");
//            sql.append(" FROM schedule ");
//            sql.append(" ORDER BY s_no DESC ");
//            
//            
//            RowMapper<ScheduleDTO> rowMapper=new RowMapper<ScheduleDTO>() {
//                @Override
//                public ScheduleDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
//                	ScheduleDTO dto=new ScheduleDTO();
//                	 
//                           dto.setS_no(rs.getInt("s_no"));
//                           dto.setUser_id(rs.getString("user_id"));
//                           dto.setS_title(rs.getString("s_title"));
//                           dto.setS_content(rs.getString("s_content"));
//                           dto.setS_rdate(rs.getString("s_rdate"));
//                           dto.setS_startdate(rs.getString("s_startdate"));
//                           dto.setS_enddate(rs.getString("s_enddate"));
//                           return dto;
//                }//mapRow() end
//            };//rowMapper end
//            
//            
//            list=jt.query(sql.toString(), rowMapper);
//
//        }catch(Exception e){
//            System.out.println("일정 불러오기 목록 실패:"+e);
//         }//end
//        
//         return list;
//        
//    }//list() end
    
    public int totalRowCount() {
        int cnt=0;
        try {
            sql=new StringBuilder();
            sql.append(" SELECT COUNT(*) FROM schedule ");
            cnt=jt.queryForObject(sql.toString(), Integer.class);
        }catch(Exception e){
            System.out.println("전체 행 갯수:" + e);
        }//end
        return cnt;
    }//totalRowCount() end


    
    public int delete(int s_no) {
        int cnt = 0;
        try {
          sql = new StringBuilder();
          sql.append(" DELETE FROM schedule" );
          sql.append(" WHERE s_no=? ");  
          cnt = jt.update(sql.toString(), s_no);
        } catch (Exception e) {
            System.out.println("일정삭제실패"+e);
        }//end
        return cnt;
    }//delete() end
    
    public int update(ScheduleDTO dto) {
        int cnt = 0;
        try {
          sql = new StringBuilder();
          sql.append(" UPDATE schedule ");
          sql.append(" SET s_title=?, s_content=?, s_startdate=?, s_enddate=? ");
          sql.append(" WHERE s_no=? "); 
          cnt = jt.update(sql.toString(), dto.getS_title(), dto.getS_content(), dto.getS_startdate(), dto.getS_enddate());
        } catch (Exception e) {
           System.out.println("일정 수정 실패"+e);
        }//end
        return cnt;
    }//update end


    public ScheduleDTO read(int s_no) {
    	ScheduleDTO dto = null;
        try {
          sql = new StringBuilder();
          sql.append(" SELECT s_no, user_id, s_title, s_content, s_rdate, s_startdate, s_enddate ");
          sql.append(" FROM schedule ");
          sql.append(" WHERE s_no = " + s_no);
          
          RowMapper<ScheduleDTO> rowMapper=new RowMapper<ScheduleDTO>() {
              @Override
              public ScheduleDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
                  ScheduleDTO dto=new ScheduleDTO();
                  dto.setS_no(rs.getInt("s_no"));
                  dto.setUser_id(rs.getString("user_id"));
                  dto.setS_title(rs.getString("s_title"));
                  dto.setS_content(rs.getString("s_content"));
                  dto.setS_rdate(rs.getString("s_rdate"));
                  dto.setS_startdate(rs.getString("s_startdate"));
                  dto.setS_enddate(rs.getString("s_enddate"));
                  return dto;
              }//mapRow() end
          };//rowMapper end

          dto = jt.queryForObject(sql.toString(), rowMapper);
          
        } catch (Exception e) {
            System.out.println("일정 상세보기 실패"+e);
        }//end
        return dto;
    }//read() end
    

    public List<PlaceDTO> readp(int s_no) {
    	List<PlaceDTO> dto = null;
        try {
          sql = new StringBuilder();
          sql.append(" select p_name,p_address from place where p_code in\r\n"
          		+ "(select p_code from s_detail where s_no="+s_no+"\r\n"
          		+ ")");
          
          RowMapper<PlaceDTO> rowMapper=new RowMapper<PlaceDTO>() {
              @Override
              public PlaceDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
            	  PlaceDTO dto=new PlaceDTO();
                  dto.setP_name(rs.getString("p_name"));
                  dto.setP_address(rs.getString("p_address"));
                
                  return dto;
              }//mapRow() end
          };//rowMapper end

          dto = jt.query(sql.toString(), rowMapper);
          
        } catch (Exception e) {
            System.out.println("일정 상세보기 실패"+e);
        }//end
        return dto;
    }//read() end
    
    public int SchedulePaging(int totalRowCount) {
		
		
		int endPage = (int) (Math.ceil(totalRowCount/ 10.0));
		
		return endPage;
	}
    
}
