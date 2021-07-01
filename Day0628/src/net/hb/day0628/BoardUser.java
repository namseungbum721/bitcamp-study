package net.hb.day0628;

public class BoardUser {

  public static void main(String[] args) {
    Board ob = new Board();
    ob.setTitle("6월 장미축제"); // 리턴값 x //xml문서 전달
    String data = ob.getTitle(); // 자바문서에서 땡겨옴
    //게터/세터 ==> lombok롬복 연결
    System.out.println(data); //뷰웹화면

  } //END

}//class END
