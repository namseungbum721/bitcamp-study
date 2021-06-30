package com.eomcs;

import java.util.Date;
import java.util.Scanner;

public class App2 {

  static final int BOARD_LENGTH = 100;
  static String[] titles = new String[BOARD_LENGTH];
  static String[] contents = new String[BOARD_LENGTH];
  static String[] passwords = new String[BOARD_LENGTH];
  static int[] viewCounts = new int[BOARD_LENGTH];
  static Date[] createdDates = new Date[BOARD_LENGTH];
  static int size = 0;
  static Scanner keyScan = new Scanner(System.in);



  public static void main(String[] args) {

    System.out.println("----게시판관리----");

    loop: while(true) {
      System.out.print("명령> ");
      String command = keyScan.nextLine();

      switch(command) {
        case "list" : list(); break;
        case "add" : add(); break;
        case "update" : update();
        case "delete" : delete(); break;
        case "view" : view(); break;


        case "quit" :
          break loop;
        default:
          System.out.println("지원하지 않는 명령어입니다.");
      }
    }

    keyScan.close();

    System.out.println(" 안녕히 가세요 ");
  }

  static void list() {
    System.out.println("[게시글 목록]");
    for(int i = 0; i < size; i++) {
      System.out.printf("%d, %s, %d\n", i, titles[i], viewCounts[i] );
    }
  }

  static void add() {
    System.out.println("[게시글 등록]");

    if(size == BOARD_LENGTH) {
      System.out.println("더 이상 추가할 수 없습니다.");
      return;
    }

    System.out.print("제목: ");
    titles[size] = keyScan.nextLine();

    System.out.print("내용: ");
    contents[size] = keyScan.nextLine();

    System.out.print("암호: ");
    passwords[size] = keyScan.nextLine();

    createdDates[size] = new Date();

    System.out.println("게시글을 등록하였습니다.");

    size++;
  }
  static void update() {
    System.out.println("[게시글 변경]");
    System.out.print("번호? ");
    int index = Integer.parseInt(keyScan.nextLine());

    if(index<0 || index >= size) {
      System.out.println("무효한 게시글 번호입니다.");
      return;
    }

    System.out.printf("제목(%s)? ", titles[index]);
    String title = keyScan.nextLine();

    System.out.printf("내용(%s)? ", contents[index]);
    String content = keyScan.nextLine();

    System.out.print("정말 변경하시겠습니까?(y/N)");
    if (!keyScan.nextLine().equals("y")) {
      System.out.println("게시글 변경을 취소하였습니다.");
      return;
    }

    titles[index] = title;
    contents[index] = content;

    System.out.println("게시글을 변경하였습니다.");
    return;
  }

  static void delete() {
    System.out.println("[게시글 삭제]");

    System.out.print("번호? ");
    int index = Integer.parseInt(keyScan.nextLine());

    if(index<0 || index >= size) {
      System.out.println("무효한 게시글 번호입니다.");
      return;
    }

    System.out.print("정말 삭제하시겠습니까?(y/N)");
    if (!keyScan.nextLine().equals("y")) {
      System.out.println("게시글 삭제를 취소하였습니다.");
      return;
    }

    for (int i= index; i <size -1; i++) {
      titles[i] = titles[i+1];
      contents[i] = contents[i+1];
      viewCounts[i] = viewCounts[i+1];
      createdDates[i] = createdDates[i+1];

    }
    size--;

    System.out.println("게시글을 삭제하였습니다.");
  }

  static void view() {
    System.out.println("[게시글 조회]");
    System.out.print("번호? ");
    int index = Integer.parseInt(keyScan.nextLine());

    if(index<0 || index >= size) {
      System.out.println("무효한 게시글 번호");
      return;
    }

    viewCounts[index]++;

    System.out.printf("제목: %s\n", titles[index]);
    System.out.printf("내용: %s\n", contents[index]);
    System.out.printf("조회수: %d\n", viewCounts[index]);
    System.out.printf("등록일: %1$tY-%1$tm-%1$td %1$tH:%1$tM:%1$tS\n", createdDates[index]);

  }
}