package com.eomcs.lang.ex07;


public class Test0450 {

  public static void main(String[] args) {
    System.out.println(sum(15));
  }

  static int sum(int value) {
    if(value==1)
      return 1;

    return value + sum(value - 1);
  }
}






