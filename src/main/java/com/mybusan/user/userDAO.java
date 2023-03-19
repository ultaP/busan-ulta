package com.mybusan.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Map;
import javax.servlet.http.HttpSession;
@Repository
public class userDAO {
    @Autowired
    SqlSession sqlSession;

    public userDTO loginCheck(userDTO userdto){
        return sqlSession.selectOne("user.loginCheck", userdto);
    }
    public void register(userDTO userdto){
        sqlSession.insert("user.register", userdto);
    }

    public Integer idOverlapCheck(userDTO userdto){
        return sqlSession.selectOne("user.idOverlapCheck", userdto);
    }

    public Integer emailOverlapCheck(userDTO userdto){
        return sqlSession.selectOne("user.emailOverlapCheck", userdto);
    }

    public Integer phoneOverlapCheck(userDTO userdto){
        return sqlSession.selectOne("user.phoneOverlapCheck", userdto);
    }

    public Integer SendVericode(userDTO userdto){
        return sqlSession.selectOne("user.SendVericode", userdto);
    }
//    
//    public Integer SendVericode2(userDTO userdto){
//        return sqlSession.selectOne("user.SendVericode2", userdto);
//    }

    public userDTO findIDProc(userDTO userdto){
        return sqlSession.selectOne("user.findIDProc", userdto);
    }
    
    public void logout(HttpSession session) {
		System.out.println("===> 로그아웃 기능 처리");
		session.invalidate();
	}

}
