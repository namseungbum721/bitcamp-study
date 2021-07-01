package net.hb.day0628;

import java.util.Scanner;

public class Work03gugudan {

  public static void main(String[] args) {
    try {
      //자바에서 표준입력 ascii 코드 byte 형태
      //자바에서 표준입력 System.in 키보드입력
      //java.util패키지 Scanner생성자3번째 (InputStream)
      //InputStream is = System.in; //static InputStream in필드 표준

      Scanner sc = new Scanner(System.in);

      System.out.println("단입력 >>> ");
      int dan = sc.nextInt();
      for(int a= 1; a< 10 ;a++) {
        System.out.println(dan + "*" + a+ "=" +(dan*a));
      }
    }catch(Exception e) { }
  }
}
