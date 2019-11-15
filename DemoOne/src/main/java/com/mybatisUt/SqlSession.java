package com.mybatisUt;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSession {
	private static String resource = "mybatis/mybatis-config.xml";
	private static  org.apache.ibatis.session.SqlSession sqlSession=null;
	private static InputStream getConfig(){
		InputStream inputStream = null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return inputStream;
	};
	public Object getMapper(Class clas){
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(this.getConfig());
		 sqlSession= sqlSessionFactory.openSession();
		 Object obj =sqlSession.getMapper(clas);
		 
		return obj;
	}
	
	public void commit() {
		sqlSession.commit();
	}
	public void closeSqlSession(){
		if(sqlSession!=null){
			sqlSession.close();
		}
	}
}
