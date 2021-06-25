package com.eomcs;

import java.util.Scanner;

public class App {
  //설계도

  static Scanner keyScan = new Scanner(System.in);

  public static void main(String[] args) {

    //규칙에 따라 만든 클래스에 대해
    //규칙에서 정의한 메서드를 호출하려면
    //먼저 그 클래스의 인스턴스를 생성한 후
    //그 인스턴스를 이용하여 메서드를 호출해야한다.
    BoardHandler boardHandler = new BoardHandler("게시판1", keyScan);
    BoardHandler boardHandler2 = new BoardHandler("게시판2", keyScan);
    MemberHandler memberHandler = new MemberHandler(keyScan);
    ComputeHandler computeHandler = new ComputeHandler(keyScan);




    menuLoop : while (true) {
      System.out.println("[메뉴]");
      System.out.println("  1 : 게시글관리[1]");
      System.out.println("  2 : 게시글관리[2]");
      System.out.println("  3 : 회원관리");
      System.out.println("  4 : 계산기");
      System.out.print("메뉴를 선택하시오. (종료: quit) [1..3] ");
      String menuNo = keyScan.nextLine();

      switch (menuNo) {
        case "1":
          boardHandler.execute();
          break;
        case "2":
          boardHandler2.execute();
          break;
        case "3":
          memberHandler.execute();
          break;
        case "4":
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







