package com.eomcs;

import java.util.Scanner;

public class App {
  //설계도

  static Scanner keyScan = new Scanner(System.in);

  public static void main(String[] args) {

    // App 클래스에서 만든 Scanner 인스턴스를 BoardHandler 와 MemberHandler 가 같이 쓴다
    BoardHandler.keyScan = keyScan;
    MemberHandler.keyScan = keyScan;
    ComputeHandler.keyScan = keyScan;

    //규칙에 따라 만든 클래스에 대해
    //규칙에서 정의한 메서드를 호출하려면
    //먼저 그 클래스의 인스턴스를 생성한 후
    //그 인스턴스를 이용하여 메서드를 호출해야한다.
    BoardHandler boardHandler = new BoardHandler();
    MemberHandler memberHandler = new MemberHandler();
    ComputeHandler computeHandler = new ComputeHandler();


    menuLoop : while (true) {
      System.out.println("[메뉴]");
      System.out.println("  1 : 게시글관리");
      System.out.println("  2 : 회원관리");
      System.out.println("  3 : 계산기");
      System.out.print("메뉴를 선택하시오. (종료: quit) [1..3] ");
      String menuNo = keyScan.nextLine();

      switch (menuNo) {
        case "1":
          boardHandler.execute();
          break;
        case "2":
          memberHandler.execute();
          break;
        case "3":
          computeHandler.execute();
          break;
        case "quit":
          break menuLoop;
        default:
          System.out.println("메뉴 번호가 옳지 않습니다.");
      }

      System.out.println();
    }

    Scanner keyScan = new Scanner(System.in);

    keyScan.close();

    System.out.println("안녕히 가세요!");
  }

}







