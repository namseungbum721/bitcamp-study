package net.hb.day0628;

public class BitCamp_3 { //기본생성자는 생략가능
  public BitCamp_3() {this("종로", 7, "python"); }
  public BitCamp_3(String location) { } //String타입의 매개인자 있는 생성자
  public BitCamp_3(int floor) { } //int 타입의 매개인자 있는 생성자
  public BitCamp_3(String location, int floor, String subject) {
    System.out.println(location + "지점 " + floor + "층 " + subject + "과정입니다"); 

  }


  public static void main(String[] args) {
    BitCamp_3 bc = new BitCamp_3();
    bc.coffee();

  }//end

  public void coffee() { //non-static - 바로 호출가능
    System.out.println("coffee 맥심 카누");
    this.cookie(); // this 생략 가능
  }//end

  public void cookie() {
    System.out.println("cookie 버터링");
  }




  //LA클래스에 있는 cherry() 메서드 재정의 { 제주산 체리 0:57 }
}//class END
