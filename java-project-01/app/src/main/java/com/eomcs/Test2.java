package com.eomcs;

public class Test2 {
  static class X {
    int a;
  }

  static class Y {
    int b;
  }

  public static void main(String[] args) {
    X obj1 = new X();
    Y obj2 = new Y();

    //X obj3 = new Y();
    //Y obj4 = new X();

    Object obj5;
    obj5 = new X();
    //obj5 = new Y();

    X obj6 = (X) obj5;

    obj6.a = 100;

    System.out.println(obj6.a);

  }

}
