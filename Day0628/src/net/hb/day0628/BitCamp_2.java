package net.hb.day0628;

public class BitCamp_2 extends LA { //LA 상속

  public static void main(String[] args) {
    // TODO Auto-generated method stub
    BitCamp_2 bc = new BitCamp_2();
    bc.book();
    bc.cherry();

  }//end

  public void book() {
    System.out.println("book 몽블랑");
    super.cherry(); //부모클래스 접근 super
    cherry(); //this 생략가능
  }//end

  @Override
  public void cherry() {
    System.out.println("제주산 체리 11:00");

  }


  //LA클래스에 있는 cherry() 메서드 재정의 { 제주산 체리 0:57 }
}//class END
