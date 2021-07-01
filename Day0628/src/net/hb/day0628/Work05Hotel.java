package net.hb.day0628;

import java.util.Scanner;

public class Work05Hotel {
  //생성자 클래스이름, 리턴값x, void기술x
  //생성자사용은 new키워드 다음에 기술 ob(객체) = new 클래스( )
  //생성자는 중복가능, 기본생성자 생략가능
  //멤버필드 = 전역변수 private

  private int floor ; //층 = 행 3층
  private int room ; //호 = 열 5호 3층*5호 = 15방 구성
  private String[][] name = new String[3][5];
  private String title;

  public Work05Hotel() { }
  public Work05Hotel(String name) { }
  public Work05Hotel(String name, int year) { }


  public void process() {
    Scanner sc = new Scanner(System.in);
    int sel = 9;

    for(int i=0; i<3 ; i++) {
      for(int k=0; k<5; k++) {
        name[i][k] = "0"; 
      }
    }

    while(true) {
      System.out.print("\n1.투숙 2.퇴실 3.map 4.list 9.종료 >>>");
      sel = Integer.parseInt(sc.nextLine());

      if(sel==9) { 
        System.out.println("호텔예약프로그램 종료합니다");
        System.exit(1);

      }
      switch (sel) {
        case 1 : 
          checkIn(); 
          break;
        case 2 : 
          checkOut(); 
          break;
        case 3 : 
          map(); 
          break;
        case 4 :
          list();
          break;
      }
    }
  }//end
  public void checkIn() {
    Scanner sc = new Scanner(System.in);
    //몇층 몇호에 묵을 건지 물어봐야지
    System.out.println("몇 층에 체크인 하시나요? ex) 1~3");
    floor = sc.nextInt();
    System.out.println("몇 호에 묵으시나요? ex) 1~5");
    room = sc.nextInt();

    //방이 있는지 없는지 check
    if(name[floor-1][room-1] != "0") {
      System.out.println("이미 예약된 방입니다. 다시 check in 해주세요 ");
    } else  {
      //숙박 사용자 이름 입력
      System.out.println("이름을 입력 하세요");
      name[floor-1][room-1] = sc.next();
      System.out.printf("%s님 체크인 되었습니다", name[floor-1][room-1]);
    }
  }//end

  public void checkOut() {
    Scanner sc = new Scanner(System.in);
    //몇층 몇호에 묵을 건지 물어봐야지
    System.out.println("몇 층에 체크아웃 하시나요? ex) 1~3");
    floor = sc.nextInt();
    System.out.println("몇 호에서 체크아웃 하시나요? ex) 1~5");
    room = sc.nextInt();

    //checkout된 방 0으로 초기화
    System.out.printf("%s님 체크아웃 되었습니다", name[floor-1][room-1]);
    name[floor-1][room-1] = "0";


  }//end
  // 지도 형식으로 현재 묵고 있는 방들 보여주는거 
  public void map() {
    System.out.println("■ : 숙박중. □ : 빈 방");
    // 그림 상 1층에 101호가 보이게 하기위해 역으로 반복
    for(int i=2; i>=0 ; i--) {
      for(int k=0; k<5; k++) {
        if(name[i][k] == "0") {
          System.out.printf("□ %d0%d ", i+1, k+1);
        }else {
          System.out.printf("■ %d0%d ", i+1, k+1);
        }
        System.out.println();
      }
    }

  }//end

  public void list() {
    System.out.println("#########현재 숙박 리스트 ###########");
    for(int i=0; i<3 ; i++) {
      for(int k=0; k<5; k++) {
        if(name[i][k] != "0") {
          System.out.printf("%d0%d호 : %s님 ", i+1, k+1, name[i][k]);
        }
      }
    }

  }//end

  public static void main(String[] args) {
    // TODO Auto-generated method stub
    System.out.println("###########호텔 예약 프로그램 시작 ##############");
    Work05Hotel hotel = new Work05Hotel();
    hotel.process();

  }

}