package dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.DBHelper;
import vo.CustomerVO;

public class CustomerDAO extends DBHelper{
	private static CustomerDAO instance = new CustomerDAO();
	public static CustomerDAO getInstance() {
		return instance;
	}
	private CustomerDAO() {}
	
	public void insertCustomer(CustomerVO vo) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement("insert into `customer` set `cusname`=?, `cusaddr`=?, `cushp`=?");
			psmt.setString(1, vo.getCusname());
			psmt.setString(2, vo.getCusaddr());
			psmt.setString(3, vo.getCushp());
			psmt.executeUpdate();
			close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public CustomerVO selectCustomer(int custId) {
		CustomerVO vo = null;
		try {
			conn = getConnection();
			psmt = conn.prepareStatement("select * from `customer` where `custId`=?");
			psmt.setInt(1, custId);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				vo = new CustomerVO();
				vo.setCustId(rs.getInt(1));
				vo.setCusname(rs.getString(2));
				vo.setCusaddr(rs.getString(3));
				vo.setCushp(rs.getString(4));
			}
			close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public List<CustomerVO> selectCustomers() {
		List<CustomerVO> customers = new ArrayList<>();
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from `customer`");
			
			while(rs.next()) {
				CustomerVO vo = new CustomerVO();
				vo.setCustId(rs.getInt(1));
				vo.setCusname(rs.getString(2));
				vo.setCusaddr(rs.getString(3));
				vo.setCushp(rs.getString(4));
				customers.add(vo);
			}
			close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return customers;
	}
	public void updateCustomer(CustomerVO vo) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement("update `customer` set `cusname`=? , `cusaddr`=? , `cushp`=? where `custId`=?");
			psmt.setString(1, vo.getCusname());
			psmt.setString(2, vo.getCusaddr());
			psmt.setString(3, vo.getCushp());
			psmt.setInt(4, vo.getCustId());
			psmt.executeUpdate();
			close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteCustomer(int custId) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement("delete from `customer` where `custId`=?");
			psmt.setInt(1, custId);
			psmt.executeUpdate();
			close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
