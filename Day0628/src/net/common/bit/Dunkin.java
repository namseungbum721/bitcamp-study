package net.common.bit;

public class Dunkin {
  public String coffee() {
    //non-static 메서드, 리턴값
    //주문할 때= 필요할 때 메모리에 로드
    //객체화생성 후 객체명.coffee();
    Dunkin.donuts(3);
    String kind = "아이스아메리카노";
    return kind;
  } //end

  public static void donuts(int cnt) { 
    //static메서드 메서드(매개인자)
    System.out.println("도너츠메서드 주문갯수 " + cnt + " 입니다. " );
    //미리 상품화 클래스 이름. 도너츠 ()
    //Dunkin.donuts(3); 접근
  }//end
  public void menu() { //리턴값X, 매개인자X

  }
}//class END
