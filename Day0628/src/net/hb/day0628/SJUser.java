package net.hb.day0628;

public class SJUser { //user
  public static void main(String[] args) {
    SJ sj = new SJ();


    String id = "nam";
    int first = 100;
    int second = 60;
    int total = sj.getTotal(id, first, second);
    double avg = sj.getMean(total);
    char ret = sj.getGrade(avg);
    //합격조건 평균이 70점부터, 각과목별 60점부터
    //함수의 중복 = 오버로딩 = overLoading
    String info = sj.result(avg, first, second);
    //학점을 구하는 메소드 구현 100~90점A
    //80~89B 70~79C 60~69D 0~59F
    //if switch문 사용
    //리턴값을 어떤 타입으로 받을지, 메서드이름은 어떤것이 적절한지


    System.out.println("합계 = " + total);
    System.out.println("평균 = " + avg);
    System.out.println("학점 = " + ret);
    System.out.println("합격여부 =" + info );

  }
}


