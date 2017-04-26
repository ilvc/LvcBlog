package party.pjc.blog.dao;

import java.util.Set;

import party.pjc.blog.model.User;


public interface UserDao {

	/**
	 * �û���¼
	 * @param user
	 * @return
	 */
	public User loginUser(User user);
	/** ͨ���û�����ѯ�û�
	 * @param userName
	 * @return
	 */
	public User getByUserName(String userName);
	
	/**
	 * ͨ���û�����ѯ��ɫ��Ϣ
	 * @param userName
	 * @return
	 */
	public Set<String> getRoles(String userName);
	
	/**
	 * ͨ���û�����ѯȨ����Ϣ
	 * @param userName
	 * @return
	 */
	public Set<String> getPermissions(String userName);
}
