@IsTest
public class Ass3_ques3_Test2 {

    @IsTest
    public static void ReturnObjTest(){
        
        List<String> objList = new list<String>(Ass3_ques3.getAllCustomSObjects());
        
        system.assert(objList.size()>0);
        
    }
}