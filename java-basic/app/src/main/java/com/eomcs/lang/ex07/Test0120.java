package com.eomcs.lang.ex07;

import java.util.Scanner;

//# 메서드 : 사용 후
//
public class Test0120 {

  static void printSpaces(int len) {
    for (int i = 0; i < len; i++) {
      System.out.print(" ");
    }
  }


  public static void printStars(int len) {
    for (int i = 0; i < len; i++) {
      System.out.print("*");
    }
  }

  public static void main(String[] args) {
    Scanner keyScan = new Scanner(System.in);
    System.out.print("밑변의 길이? ");
    int len = keyScan.nextInt();
    keyScan.close();

    for (int starLen = 1; starLen <= len; starLen += 2) {
      // 명령 코드들을 기능 별로 묶어 놓고
      // 필요할 때마다 다음과 같이 사용하면 
      // 코드를 읽기가 쉬워진다.
      printSpaces((len - starLen) / 2);
      printStars(starLen);
      System.out.println();
    }

  }
}