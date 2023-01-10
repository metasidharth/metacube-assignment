public class Ass3_ques4 {
// Create a class which show the list of sobjects exists in org. Assignment Question 4;
 public static List<String> returnObj(){
        
    
    List<string> SObjectList = new List<string>();

        for(Schema.SObjectType objTyp : Schema.getGlobalDescribe().Values()){
            
               String name = objTyp.getDescribe().getName();
            SobjectList.add(name);
              //System.debug( 'Name : ' + name);
           
          }
        System.debug(SobjectList);
        return SobjectList;
}
}