package net.hb.day0628;

public class TestLast {

  public static void main(String[] args) {
    // TODO Auto-generated method stub
    int a = 234;
    double b = 78.9;
    String c = "1200";

    //문제1 b타입을 int형으로 변환
    int x = (int)b;
    System.out.println(x+34);


    //문제2 c타입을 int형으로 변환
    int y = Integer.parseInt(c);



    System.out.println(y+34);

    //문제3 a타입을 String형으로 변환
    String z = String.valueOf(a);
    System.out.println(z+34);

  }

}
