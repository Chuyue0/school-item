package com.ty.design.utils;

import java.util.UUID;

/**
 * 文件上传工具类
 */
public class FileUploadUtil {

	public void fileUpload(){
		
	}
	
	//文件的uuid名
	private static String generateFilename(String filename){
		String ext = filename.substring(filename.lastIndexOf(".")+1);
		return UUID.randomUUID().toString()+"."+ext;
	}
}
