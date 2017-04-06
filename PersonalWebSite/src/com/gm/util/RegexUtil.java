package com.gm.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexUtil {
	public static final boolean characterAndNumber(String string)
	{
		Pattern pattern = Pattern.compile("^[0-9a-zA-Z]+$");
    	Matcher matcher = pattern.matcher(string);
    	return matcher.matches();
	}
}
