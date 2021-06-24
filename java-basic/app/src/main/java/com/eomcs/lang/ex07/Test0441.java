package com.eomcs.lang.ex07;

//# 메서드 : 스택 메모리 응용 I
//
public class Test0441 {

  public static void main(String[] args) {
    int a = m1(2);
    System.out.println(a);
  }
  static int m1(int value) {
    int r1 = m2(value);
    int r2 = m3(value);
    return r1 + r2;
  }
  static int m2(int value) {
    return value + 5;
  }
  static int m3(int value) {
    return value + 500;
  }
}
// JVM Stack 메모리의 사용
// 0) 시작
// 1) main()
// 2) main() => m1()
// 3) main() => m1() => m2()
// 4) main() => m1()
// 5) main() => m1() => m3()
// 6) main() => m1()
// 7) main()
// 8) 종료!