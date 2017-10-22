package dao;

import model.User;

public interface UserMapper {

	public User selectById(Integer id);
	public User selectByUsername(User user);
}
