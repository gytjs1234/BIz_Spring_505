package com.callor.ems.exec;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeMap;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;

public class MakeNaverUser {
	public static void main(String[] args) {
		
		Scanner scan =new Scanner(System.in);
		//암호화시키는도구
		StandardPBEStringEncryptor pbEnc = new StandardPBEStringEncryptor();
		
		//환경변수
		Map<String,String> envList =System.getenv();
		
		
		String saltPass =envList.get("NAVER");
		System.out.println("salt Pass"+saltPass);
		if(saltPass==null) {
			System.out.println("naver 환경변수를 설정해주세요.");
			return;
		}
		pbEnc.setAlgorithm("PBEWithMD5AndDES");
		pbEnc.setPassword(saltPass);

		String propsDir = "./src/main/webapp/WEB-INF/spring/props";

		Map<String, String[]> secFiles = new TreeMap<String, String[]>();
		secFiles.put("naver.email.properties",
				new String[] { "naver.username", "naver.password" });

		
		// keyset: 중복되지않게 하기위해서 사용한다. key값들만 뽑아서 Set로만듬
		// Map은 여러개의 데이터가 추가되지만
		// 저건 for문을통해 반복문 구현안됨. for문을통해 반복하기위해 키값만 뽑아서 set으로 만들어준다.
		Set<String> files = secFiles.keySet();

		for (String file : files) {

			// 파일과 관련된 도구
			File proFile = new File(propsDir, file);
			try {
				//db.connection.properties 이름으로 파일을 만들겠다.
				PrintWriter out = new PrintWriter(proFile);
				
				System.out.println("=".repeat(100));
				System.out.println(file);
				System.out.println("=".repeat(100));
				String[] datas = secFiles.get(file);
				System.out.println("=".repeat(100));
				for (String data : datas) {
					System.out.printf("%s>>",data);
					String value =scan.nextLine();
					out.printf("%s=ENC(%s)\n",data,pbEnc.encrypt(value));
				}
				out.close();
				out.flush();
				
				System.out.println("File writer OK!");
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		String mysqlProps = "db.connection.properties";
		String mysqlUser = "mysql.username";

	}

}
