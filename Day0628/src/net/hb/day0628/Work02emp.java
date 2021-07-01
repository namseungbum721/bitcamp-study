package net.hb.day0628;

import java.util.Scanner;

public class Work02emp {

  public static void main(String[] args) {

    //자바에서 표준입력 ascii 코드 byte 형태
    //자바에서 표준입력 System.in 키보드입력
    //java.util패키지 Scanner생성자3번째 (InputStream)
    //static InputStream in필드 표준
    Scanner sc = new Scanner(System.in);
    int sabun = 0;
    String name = null;

    //문제 키보드입력 Scanner 클래스에서 반드시 입력해서 출력, 예외처리, 형변환,반복문
    while(true) {
      try {
        System.out.print("\n사번입력 >>>");
        sabun = Integer.parseInt(sc.nextLine()); //숫자, 문자 다 입력해서 단점 해결

        System.out.println("이름입력 >>>");
        name = sc.nextLine();
        if(name.equals("") || name.equals(null)) {
          System.out.println("이름데이터 정확히 입력하세요");
          continue;
        }
        break;
      }catch (Exception e) { }

    }//while end

    System.out.println();
    System.out.println("사번 = " + sabun);
    System.out.println("이름 = " + name);

  }
}
