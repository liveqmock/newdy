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
	public final static String MENU = "menu";
	public final static String USER_ROLE = "userRole";
	public final static String ALLMENU = "allmenu";

	public final static String APP_PIC_TYPE_INDEXPIC = "1";//

	public final static String APP_PIC_TYPE_TYPEPIC = "2";

	public final static String APP_PIC_TYPE_PREVIEW = "3";

	// public final static String FRONT_IP_ADDRESS="http://192.168.0.115:8087";

	public final static String FRONT_IP_ADDRESS = "http://221.122.72.214";//
	public final static String FRONT_PROPERTY_UPDATE_METHOD_NAME = "systemUpdate/init?identity=";

	public final static String[] ExcelHeader = { "课程名称", "申请人", "用户名", "所属组",
			"申请时间", "申请原因", "审核状态", "审批时间" };

	public final static int exportSize = 2000;

	/**
	 * 权限常量
	 */
	public interface MANAGE_CONSTANTS {
		public final static String USER = "2";
		public final static String GROUP = "1";
		public final static String RESOURCE = "3";

	}

	public interface USER_MESSAGE_CONSTANTS {
		public final static String LETTER = "0";
		// 系统消息
		public final static String SYSTEM = "1";

		// 关注消息
		public final static String SUBSCRIBE = "2";

		// 回复消息
		public final static String REPLAY = "3";

		public final static String NOTICE = "4";

	}

}
