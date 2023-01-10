@IsTest
public class Ass3_ques1_Test {
    
    @IsTest 
    public static void StudentNameTest(){
        class__c cl = new class__c(Name='Test Class',Name__c='Test ClassforTest',maxSize__c=10);
        insert cl;
        
        LIst<Student__c> st = new List<Student__c>();
        for(Integer i=0;i<5;i++){
           st.add(new Student__c(Name='Abhi'+ i , Class__c=cl.id,LastName__c='Sharma'));        
        }
       insert st;
            
            system.debug(st);
        List<Student__c> ids = [select Id from Student__c where class__c =: cl.Id];
        
     List<string> finalList =new list<String>(Ass3_ques1.StudentName(cl.id));
        
        system.assertEquals(5,finalList.size());
    }
}