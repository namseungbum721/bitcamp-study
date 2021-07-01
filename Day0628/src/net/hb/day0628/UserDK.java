package net.hb.day0628;

import net.common.bit.Dunkin;

public class UserDK {
  public static void main(String[] args) {
    //문제 Dunkin클래스 coffee메서드호출, donuts메서드호출

    System.out.println("UserDK클래스 3:40");
    Dunkin.donuts(3);
    Dunkin dk = new Dunkin();
    String msg = dk.coffee();
    System.out.println(msg);
    System.out.println("주문한음료는" + msg + "입니다. ");
  }
}

