package com.eomcs.lang.ex04;

//# 문자 변수 - 변수의 메모리 크기
//
public class Test01 {
  public static void main(String[] args) {
    char c; //Unicode 문자 코드(0~65535) 를 저장하는 변수
    
    c = 0x0041; //A
    System.out.println(c);
    //c 변수에 저장된 문자 코드를 println
  
    c = 0x41; // 숫자 앞의 00은 생략해도 된다.
    System.out.println(c);

    c = 65; // A 문자의 유니코드를 10진수로 표현해도 된다.
    System.out.println(c);
    
    c= '헐';  // 한글 '헐'의 유니코드 값을 c변수에 저장한 후 출력한다.
    System.out.println(c);
    c = 0xd5d0;
    System.out.println(c);
  }
}
