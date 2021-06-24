package com.eomcs;


public class Test2 {
  static class A {
    int x;
  }
  static class B {
    int y;
  }
  static class C {
    int z;
  }

  public static void main(String[] args) {
    A r1 = new A();
    r1.x = 100;

    System.out.println(r1.x);

    Object obj = new A();
    // obj.x = 100; // x에는 실제 A의 인 스턴스 주소가 저장된 것이 맞지만, 
    // 컴파일러 입장에서는 obj 변수의 클래스를 가지고 변수를 찾기 때문에
    // 컴파일 오류 발생!!

    // obj에 들어있는 인스턴스 주소를 제대로 사용하려면
    // 원래 타입으로 형변환 후 사용하라.

    A r2 = (A) obj;








  }

}