package net.hb.day0628;

import java.util.Scanner;

public class Work05HotelTest {

  private int floor ; //층 = 헹 3층
  private int room ; //호 = 열 5호 3층 *5열=15방구성
  private String[][] name = new String[3][5];
  private String title;

  public Work05HotelTest () { }
  public Work05HotelTest (String name) { }
  public Work05HotelTest (String name, int year) { }

  public void process( ) {
    Scanner sc = new Scanner(System.in);
    int sel = 9;
    for(int i = 0; i<3;i++) {
      for(int k = 0; k<5 ; k++) {
        name[i][k] = "0";

      }
    }

    while(true) {
      System.out.print("\n1.투숙 2.퇴실 3.map 4.list 9.종료 >>>");
      sel = Integer.parseInt(sc.nextLine());
      if(sel == 9) {
        System.out.println("호텔예약프로그램을 종료합니다.");
        System.exit(1);
      }
      switch(sel ) {
        case 1 : checkIn(); break;
        case 2 : checkOut(); break;
        case 3 : map(); break;
        case 4 : list(); break;



      }
    }

  }//end

  public void checkIn( ) {
    Scanner sc = new Scanner(System.in);
    System.out.println("몇층 예약 도와드릴까요?? ex) 1~3 " );
    floor = sc.nextInt();

    System.out.println("몇호 예약 도와드릴까요?? ex) 1~5 ");
    room = sc.nextInt();



    if( name[floor-1][room-1] != "0" ) {
      System.out.println("이미 예약된 방입니다. 다른 방을 예약해주세요");
    } else if(name[floor-1][room-1]== "0") {
      System.out.print("예약자 이름 :");
      name[floor-1][room-1] = sc.next();
      System.out.printf("\n%s님 예약되었습니다" , name[floor-1][room-1]);
      System.out.println("--------------------");
    } 
  }//end

  public void checkOut( ) {
    Scanner sc = new Scanner(System.in);
    System.out.println("몇 층 체크아웃 하시겠습니까??");
    floor = sc.nextInt();
    System.out.println("몇 호 체크아웃 하시겠습니까??");
    room = sc.nextInt();

    System.out.printf("%s님 체크아웃되셨습니다.", name[floor-1][room-1]);
    name[floor-1][room-1] = "0";

  }

  //end

  public void map() { //printAll() = list() = display()
    System.out.println("빈 방 : ⬜    숙박중 : 🔳 ");
    for(int i = 0; i<3; i++) {

      for(int k = 0; k<5; k++) {

        if(name[i][k] == "0") {
          System.out.printf("⬜ %d0%d호 ", i+1, k+1);
        } else {
          System.out.printf("🔳 %d0%d호 ", i+1, k+1);
        }
        System.out.println();
      }

    }//end
  }
  public void list() {
    System.out.println("*******숙박리스트********");
    for(int i= 0; i<3; i++) {
      for(int k = 0; k<5; k++) {
        if(name[i][k] != "0") {
          System.out.printf("%d0%d호 %s님", i+1, k+1, name[i][k]);
        }
      }
    }

  }
  public static void main(String[] args) {
    Work05HotelTest wh = new Work05HotelTest();
    wh.process();


  }//end
}//end