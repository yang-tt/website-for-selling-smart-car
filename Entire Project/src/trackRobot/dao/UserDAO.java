package trackRobot.dao;

import trackRobot.vo.User;

public interface UserDAO {
	public int queryByUsername(User user)throws Exception;
	public int addUser(User user)throws Exception;
	public int checkUnique(User user) throws Exception;
	public int modifyPassword(String username,String password,String email) throws Exception;
}
