package net.hb.day0628;

public class Work01jumin {

  public static void main(String[] args) {
    String min = "871024-1541965"; //키보드 입력 대신 초기값
    String min1 = "871024";
    String min2 = "1541965";

    //문제1 총자릿수 6-7 13자릿수,  14자릿수
    //문제2 ******-1541965
    //문제3 1/3 남자 2/4 여자 switch
    //length(), substring(), indexOf(), charAt()
    int cnt = min.length();
    System.out.println("총자릿수 = " + cnt + "자리입니다" );

    String back = min2.substring(0);
    System.out.println("******-" + back);

    String msg = "성별구분";
    char gender = min.charAt(7);
    switch(gender) {
      case '1' : 
      case '3' : System.out.println("남자입니다."); break;
      case '2' : 
      case '4' : System.out.println("여자입니다."); break;
      default : System.out.println("잘못 입력하셨습니다."); break;
    }



  }

}
