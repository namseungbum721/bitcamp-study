package net.hb.day0628;

public class TestArray01 {

  public static void main(String[] args) {
    //배열은 초기화
    //배열의 장단점
    String[] dong = new String[5];
    for(int i=0; i < dong.length;i++) {
      System.out.print(dong[i] + " ");
    }

    System.out.println();
    boolean [] camp = new boolean[5]; //false 기본값 출력
    for(int i = 0; i < camp.length;i++) {
      System.out.print(camp[i] + " ");
    }

    System.out.println();
    double[] pi = new double[5];
    for(int i=0; i < pi.length;i++) {
      System.out.print( pi[i] + " ");
    }

    System.out.println();
    //배열은 같은 타입으로 구성, 크기 사이즈 고정
    //채팅구성원 정보 닉이름 String, 나이 int , 성별 boolean => 배열구성비권장
    //웹web 게시판 글쓴이, 제목, 이미지, 조회수, 날짜
    //채팅, 쇼핑몰, 게시판 구성할 때 배열의 한계극복 collection 모음 List계열
    //java.util 패키지 List인터페이스 상속 - ArrayList클-속도빠름, Vector클(동기화처리)오래걸림
    ////java.util 패키지 Map인터페이스, Set인터페이스, List인터페이스
    //배열의 같은타입구성, 크기고정인 배열의 단점을 List인터페이스에
    //상속받은 ArrayList 또는 Vector 클로 처리
    //같은타입구성, 크기고정인 1차원 배열
    //boolean [] camp = new boolean[5]; //false기본값 출력
    //배열 및 문자열 시작위치는 0부터 시작
    //일반유저 또는 사용자는 1번부터 시작이다
    //자바에서 표준출력 모니터 System.out ==> PrintStream
    //자바에서 표준입력 키보드 System.in ==> Scanner 클래스
  }//end

}//class END
