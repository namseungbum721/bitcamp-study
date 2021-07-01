package net.hb.day0628;

public class TestJumin {

  public static void main(String[] args) {
    //java.lang 패키지 String 클래스의 메서드 char charAt(int)
    //String 클래스의 메서드 int indexOf(int/String)
    //String 클래스의 메서드 String substring(1,2끝-1)
    //String 클래스의 메서드 String substring(1시작) 시작부터 끝까지
    String min = "871024-1541965";
    int pos = min.indexOf("-");
    System.out.println("pos = " + pos);
    //10월24일 생일이네요
    String month = min.substring(2, 4);
    String day = min.substring(4, 6);
    System.out.println(month + "월 " + day + "일 생일이네요" );

    String last = min.substring(7);//시작점, 끝x
    System.out.println(last);

    int len = min.length();
    System.out.println("총자릿수 = " + len);


  }//end
}//class END
