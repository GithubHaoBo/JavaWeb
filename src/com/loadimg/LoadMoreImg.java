package com.loadimg;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class LoadMoreImg extends HttpServlet {

	private static final long serialVersionUID = 271155822872217269L;

	// 上传多个图片
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		// 获取所要上传文件的位置路径
		String saveparh = request.getServletContext().getRealPath("uploadmore");
		System.out.println(saveparh);

		// 获取part对象
		Collection<Part> parts = request.getParts();
		System.out.println(parts.size());

		for (Part part : parts) {
			if (part != null) {
				// 获取header
				String header = part.getHeader("content-disposition");
				System.out.println("Header:" + header);

				// 通过header，截取上传文件的名字
				String filename = getFileName2(header);
				System.out.println(filename);

				// 上传文件
				if (filename != null && filename != "") {
					part.write(saveparh + "\\" + filename);
				}
			}
		}

	}

	// 通过截取字符串获得上传文件的名字
	private String getFileName(String header) {
		String[] strs1 = header.split(";");
		System.out.println(Arrays.toString(strs1));
		String[] strs2 = strs1[2].split("=");
		String s = strs2[1].substring(strs2[1].lastIndexOf("\\") + 1).replace("\"", "");
		return s;

	}

	// 通过正则表达式上传
	private String getFileName2(String header) {
		String fileName = "";
		String patten = "filename=\"(.+?)\"";
		Pattern reg = Pattern.compile(patten);
		Matcher matcher = reg.matcher(header);

		if (matcher.find()) {
			fileName = matcher.group(1);
		}
		return fileName.substring(fileName.lastIndexOf("\\") + 1).replace("\"", "");
	}

}
