package com.eomcs.lang.ex07;

//# 메서드 : 스택 메모리 응용 I
//
public class Test0440 {

  public static void main(String[] args) {
    int r = m1(5);
    System.out.println(r);
  }

  static int m1(int val) {
    int r1 = m2(val);
    int r2 = m3(val);
    return  r1 + r2;
  }
  static int m2(int val) {
    return  val + 200;
  }
  static int m3(int val) {
    return  val + 300;
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