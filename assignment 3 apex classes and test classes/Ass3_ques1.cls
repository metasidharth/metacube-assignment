//Create a class and a static function which takes classId as argument and returns all names of the
//  students in that class as a list.

public class Ass3_ques1 {
    public static list<string> getStudentNames(String classId){
        list<string> names=new List<String>();
        list <Sobject> students= [select name  from student__c where class__r.Id=:classId ];
       
        for(Sobject st:students){
            names.add(String.valueOf(st.get('name')));
        }
        return names;
    }
    
}

//list<String> students=Ass3_ques1.getStudentNames('a012w00000zzOb3AAE');
//System.assert(false,students);