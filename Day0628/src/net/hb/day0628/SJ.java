package net.hb.day0628;

public class SJ { //make공급처
  //합계 구하는 함수 sum~~ hap ~~total     
  //평균 구하는 함수 avg~~ average~~ mean~~
  //학점 구하는 함수 grade~~~
  //합격여부를 구하는 함수 pass~~ success~~
  public int getTotal(String name, int kor, int eng) {
    System.out.println(name +" 님의 성적합계처리 ");
    int hap = kor + eng;
    return hap;
  }
  public double getMean(int value) {
    double avg =  (double) value / 2;
    return avg;
  }
  public char getGrade(double data) { 
    char grade = 'F';
    //switch(조건double타입 에러 발생)

    switch ((int)data/10) { //평균데이터점수 int정수화
      case 10 :
      case 9 : grade = 'A'; break;
      case 8 : grade = 'B'; break;
      case 7 : grade = 'C'; break;
      case 6 : grade = 'D'; break;
      default :
        grade = 'F'; break;
    }
    return grade;
  }//end

  public String result(double data) {//오버로딩
    String msg = "합격여부안내문";
    if(data>=70) {
      msg = "합격";
    }
    else
      msg = "재시험";

    return msg;
  }

  public String result(double data, int x, int y) {
    String msg = "합격여부안내문";
    if(data>=70 && x>=60 && y>=60) {
      msg = "합격";
    }
    else
      msg = "재시험";

    return msg;
  }
}//class END
