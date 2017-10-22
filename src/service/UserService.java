package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.UserMapper;
import model.User;

@Service
public class UserService {

	@Autowired
	private UserMapper mapper;
	
	@Transactional(readOnly=true)
	public User findById(Integer id) {
		return mapper.selectById(id);
	}
	
	@Transactional(readOnly=true)
	public User findByUsername(User user) {
		return mapper.selectByUsername(user);
	}

	
	
	
	
	public UserMapper getMapper() {
		return mapper;
	}

	public void setMapper(UserMapper mapper) {
		this.mapper = mapper;
	}
	
	
}
