//Create a function which returns a map where key is class and value is set of studentId in it.
public class Ass3_ques3 {

    public static map<string,list<string>>mapfunction(){
         map<string,list<string>> classmap= new  map<string,list<string>>();
        list<class__c> studentid=[select name ,(select name from students__r) from class__c];
        
        for(class__c st: studentid){
            List<string> idset=new list<string>();
            for(student__c stid:st.students__r)
            {
                idset.add(stid.name);
            }
            classmap.put(st.name,idset);
            
        }
        return classmap;
    }
    //System.debug(Ass3_ques3.mapfunction());
    //
   
 
    }