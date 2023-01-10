@IsTest
public class Ass3_ques2_Test {

    @IsTest
    public static void returnMapTest(){
        class__c newClass = new class__c(Name='Test Class',Name__c='Test ClassforTest');
        insert newClass;
        
        LIst<Student__c> newStudents = new List<Student__c>();
        
        for(Integer i=0;i<5;i++){
           newStudents.add(new Student__c(Name='Abhi'+ i , Class__c=newClass.id,LastName__c='Sharma'));        
        }
        insert newStudents;
        
        Map<String,List<String>> resultMap=new Map<String,List<String>>(Ass3_ques3.mapfunction());
        
        list<String> studentids=new list<string>(resultMap.get('Test Class'));
        
          Integer totalSize= studentids.size();                  
        
         system.assertEquals(1,resultMap.size());
         system.assertEquals(5,totalSize);
        
    }
}