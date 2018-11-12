package mypackage;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class DateFormate {
    /**
     * 把字符串sBody中的sFrom用sTo替换
     * @param sBody
     * @param sFrom
     * @param sTo
     * @return
     */
    public static String strReplace(String sBody, String sFrom, String sTo) {
       int i,j,l;
       if (sBody==null || sBody.equals("")) return "";
       i = 0;
       j = sFrom.length();
       StringBuffer sss = new StringBuffer(sBody.length());
       l = i;
       while (sBody.indexOf(sFrom,i)!=-1) {
         i = sBody.indexOf(sFrom,i);
         sss.append(sBody.substring(l,i));
         sss.append(sTo);
         i += j;
         l = i;
       }
       sss.append(sBody.substring(l));
       return sss.toString();
     }
	
	public static String toHtmlInput(String str) {
		if (str == null)
			return null;
		String html = new String(str);
		html = strReplace(html, "&", "&amp;");
		html = strReplace(html, "<", "&lt;");
		html = strReplace(html, ">", "&gt;");
		return html;
	}

	
	public static String toSql(String str) {
		String sql = new String(str);
		return strReplace(sql, "'", "''");
	}

	
	public static String toGb(String uniStr) {
		String gbStr = "";
		if (uniStr == null) {
			uniStr = "";
		}
		try {
			byte[] tempByte = uniStr.getBytes("ISO8859_1");
			gbStr = new String(tempByte, "GB2312");
		} catch (Exception ex) {
			System.out.println(ex.toString());
		}
		return gbStr;
	}

	
	public static String toUni(String gbStr) {
		String uniStr = "";
		if (gbStr == null) {
			gbStr = "";
		}
		try {
			byte[] tempByte = gbStr.getBytes("GB2312");
			uniStr = new String(tempByte, "ISO8859_1");
		} catch (Exception ex) {
		}
		return uniStr;
	}

	/**
	 * 把字符串转换成Utf8编码
	 * 
	 * @param s
	 * @return
	 */
	public static String toUtf8String(String s) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < s.length(); i++) {
			char c = s.charAt(i);
			if (c >= 0 && c <= 255) {
				sb.append(c);
			} else {
				byte[] b;
				try {
					b = Character.toString(c).getBytes("utf-8");
				} catch (Exception ex) {
					System.out.println(ex);
					b = new byte[0];
				}
				for (int j = 0; j < b.length; j++) {
					int k = b[j];
					if (k < 0) {
						k += 256;
					}
					sb.append("%" + Integer.toHexString(k).toUpperCase());
				}
			}
		}
		return sb.toString();
	}
	public static String getId(){
		Calendar c = Calendar.getInstance();
		Date date = c.getTime();
		String id=new SimpleDateFormat("yyyyMMddHHmmss").format(date);
		return id;
	}
	public static String getDateTime(){
		Calendar c = Calendar.getInstance();
		Date date = c.getTime();
		String id=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		return id;
	}
}
