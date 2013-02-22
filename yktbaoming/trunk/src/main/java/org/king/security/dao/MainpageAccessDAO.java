/* ============================================================
 * ��Ȩ��    king ��Ȩ���� (c) 2006
 * �ļ���    org.king.security.dao.AccountDAO.java
 * �������ڣ� 2006-4-20 9:48:00
 * ���ܣ�    {����Ҫʵ�ֵĹ���}
 * ������:   {��������}
 * �޸ļ�¼��
 * ����                    ����         ����
 * =============================================================
 * 2006-4-20 9:48:00      ljf        �����ļ���ʵ�ֻ�������
 * ============================================================
 */

/**
 * 
 */
package org.king.security.dao;

import java.io.Serializable;
import java.util.List;

import org.king.business.domain.BmAccessInfo;
import org.king.framework.dao.DAO;
import org.king.framework.dao.MyQuery;
import org.king.security.domain.Account;
import org.king.security.domain.MainpageAccess;

/**
 * <p> AccountDAO.java </p>
 * <p> {����˵��} </p>
 *
 * <p><a href="AccountDAO.java.html"><i>�鿴Դ����</i></a></p>  
 *
 * @author <a href="mailto:m_ljf@msn.com">ljf</a>
 * @version 0.1
 * @since 2006-4-20
 * 
 *
 */
public interface MainpageAccessDAO extends DAO {

	public List find(MyQuery myQuery);
	
	public List find(String query);
	 
	public MainpageAccess get(Serializable id);
	
	public List getAll();
	
	public void save(MainpageAccess transientInstance);
	
    public void update(MainpageAccess transientInstance);
    
    public void delete(MainpageAccess persistentInstance);
    
    public void save(BmAccessInfo bmAccessInfo);
    
}