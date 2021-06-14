package com.eomcs.lang.ex04;


public class Test04 {
  public static void main(String[] args) {
   
    int[] a;

    a = new int[3];

    a[0] = 100;
    a[1] = 200;
    a[2] = 300;

    System.out.println(a[0]);
    System.out.println(a[1]);
    System.out.println(a[2]);

    int[] b;
    b = a;
    System.out.println(b[1]);

  }
}
