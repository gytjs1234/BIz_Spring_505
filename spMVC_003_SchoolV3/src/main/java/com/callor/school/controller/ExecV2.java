package com.callor.school.controller;

public class ExecV2 {
	public static void main(String[] args) {
		int[] intKor = new int[5];
		int[] intEng = new int[5];
		int[] intMath = new int[5];

		int[] intSum = new int[5];

		for (int i = 0; i < intKor.length; i++) {
			int iKor = (int)(Math.random() * 100) + 1;
			int iEng = (int)(Math.random() * 100) + 1;
			int iMath = (int)(Math.random() * 100) + 1;
			int iSum = iKor + iEng + iMath;

			intKor[i] = iKor;
			intEng[i] = iEng;
			intMath[i] = iMath;
			intSum[i] = iSum;

		}
		System.out.println("국어\t 영어\t 수학 \t총점");
		System.out.println("=========================================");
		for(int i=0;i<intSum.length;i++) {
			for(int j=i+1;j<intSum.length;j++) {
				if(intSum[i]>intSum[j]) {
					int _t=intSum[i];
					intSum[i]=intSum[j];
					intSum[j]=_t;
				}
				
			}
			
		}
		for(int sum:intSum) {
			System.out.printf("%d\t",sum);
		}
		System.out.println();
		
		
		
		for(int i=0;i<intKor.length;i++) {
			for(int j=i+1;j<intKor.length;j++) {
				if(intKor[i]>intKor[j]) {
					int _t=intKor[i];
					intKor[i]=intKor[j];
					intKor[j]=_t;
				}
			}
		}
			
		for(int kor:intKor) {
			System.out.printf("%d\t",kor);
		}
		System.out.println();
		
		
		for(int i=0;i<intEng.length;i++) {
			for(int j=i+1;j<intEng.length;j++) {
				if(intEng[i]>intEng[j]) {
					int _t=intEng[i];
					intEng[i]=intEng[j];
					intEng[j]=_t;
				}
			}
			
		}
		for(int Eng:intEng){
			System.out.printf("%3d\t",Eng);
		}
		System.out.println();
		for(int i=0;i<intMath.length;i++) {
			for(int j=i+1;j<intMath.length;j++) {
				if(intMath[i]>intMath[j]) {
					int _t=intMath[i];
					intMath[i]=intMath[j];
					intMath[j]=_t;
				}
			}
			
		}
		for(int Math:intMath) {
			System.out.printf("%d\t",Math);
		}
		
		
		
		

	}

	private static void printScore(int[] intKor, int[] intEng, int[] intMath, int[] intSum) {
		for (int i = 0; i < intKor.length; i++){
			System.out.printf("%3d\t", intKor[i]);
			System.out.printf("%3d\t", intEng[i]);
			System.out.printf("%3d\t", intMath[i]);
			System.out.printf("%3d\t", intSum[i]);
		}

	}

}
