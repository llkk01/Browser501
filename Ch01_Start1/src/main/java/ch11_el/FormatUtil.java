package ch11_el;

import java.text.DecimalFormat;
// P.270
//El에서 static() 사용하기
public class FormatUtil {
	
	public static String number(long number, String pattern) {
		DecimalFormat format = new DecimalFormat(pattern);
		
		return format.format(number); //123456 =>결과값 123,456
	}

}
