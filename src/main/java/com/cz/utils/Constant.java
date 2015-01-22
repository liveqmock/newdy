/**
 * 
 */
package com.cz.utils;

/**
 * @author hyrt001
 * 
 */
public class Constant {
	
	// 字典表中学历ID
	public final static String LEARNLEVEL = "c177337e-2db6-11e4-9f8b-00215e283e38";
	// 字典表中性别ID
	public final static String SEX = "4e3e81d0-2dbd-11e4-9f8b-00215e283e38";

	public final static String USERINFO = "userInfo";

	/**
	 * 权限常量
	 */
	public interface MANAGE_CONSTANTS {
		public final static String USER = "2";
		public final static String GROUP = "1";
		public final static String RESOURCE = "3";

	}

	/**
	 * 事件常量
	 */
	public interface EVENT_CONSTANTS{
		// 增加 删除 修改 查询 启用 禁用 分配权限
		public final static int ADD = 1;
		public final static int DELETE = 2;
		public final static int UPDATE = 3;
		public final static int FIND = 4;
		public final static int ENABLE = 5;
		public final static int DISABLE = 6;
		public final static int  ASSIGN= 7;
	}

	/**
	 * 模块常量
	 */
	public interface MODULE_CONSTANTS{
		public final static int TUSER = 1;
		public final static int ROLE = 2;
		public final static int MENU = 3;
		public final static int GROUP = 4;
		public final static int DICT = 5;
	}

}
