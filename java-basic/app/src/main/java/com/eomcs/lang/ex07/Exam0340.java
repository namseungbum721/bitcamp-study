package com.eomcs.lang.ex07;

//# 메서드 : 레퍼런스를 리턴하기
//
public class Exam0340 {

  static class MyObject {
    int a;
    int b;
  }

  static MyObject swap(int a, int b) {
    MyObject ref = new MyObject();
    ref.a = b;
    ref.b = a;
    return ref;
  }

  public static void main(String[] args) {

    int a = 100;
    int b = 200;

    MyObject ref = swap(a, b);
    System.out.printf("main(): a=%d, b=%d\n", ref.a, ref.b);
  }
}
