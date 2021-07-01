package net.hb.day0628;

public class Lotto {

  public int[] input() {
    int[] su = new int[6]; // su배열 지역배열기술, 전역배열로 빼지마세요.
    su[0]=3; su[1]=5; su[2]=1;
    su[3]=2; su[4]=9; su[5]=4;
    return su;

  }//end

  public static void output(int[] LT) {
    for(int i = 0; i < LT.length; i++) {
      System.out.print(LT[i] + "\t");
    }
    System.out.println("로또 배열 출력 성공");

  }//end

  public int inputHap() {
    int hap = 0;
    int[] su = new int[6]; // su배열 지역배열기술, 전역배열로 빼지마세요.
    su[0]=3; su[1]=5; su[2]=1;
    su[3]=2; su[4]=9; su[5]=4;

    for(int i = 0; i<su.length; i++) {
      hap += su[i]; //대입연산자
    }


    return hap;

  }//end
}//class END
