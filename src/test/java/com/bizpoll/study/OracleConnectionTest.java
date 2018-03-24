package com.bizpoll.study;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class OracleConnectionTest {
	
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@192.168.123.205:1521:xe";
	private static final String USER = "scott";
	private static final String PW = "tiger";

	@Test
	public void test() throws Exception {
		Class.forName(DRIVER);
		
		try(Connection con = DriverManager.getConnection(URL, USER, PW)) {
			System.out.println("con ====> " + con);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
