package net.hb.day0628;

public class LottoUser {

  public static void main(String[] args) {

    Lotto LT = new Lotto();
    int[] ret = LT.input(); //출력의 목적이 없음
    Lotto.output(ret);


    Lotto LG = new Lotto();
    int value = LG.inputHap();  //리턴값을 안 받으면 그냥 호출, 에러는 없지만 의미가 없음
    System.out.println("숫자합계=" + value);
    System.out.println("숫자합계=" + LG.inputHap());

    System.out.println();
    System.out.println("LottoUser.java 10:08 11:00");
  } // end
}//class end
