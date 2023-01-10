@IsTest
public class Ass3_ques3_Test {

    @IsTest
    public static void datemethodTest(){
        
        Date d1=date.today();
        Date d2 = Date.newInstance(2023,1,6);
        
        Integer result = Ass3_ques2.workingDays(d1,d2);
        
        system.assertEquals(5,result);
    }
}