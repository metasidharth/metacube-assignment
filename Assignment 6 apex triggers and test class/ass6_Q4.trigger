trigger ass6_Q4 on Student__c (after insert) {
//When insert any student’s in class then update MyCount Accordingly(Use MyCount as a
//number field).
 list<class__c>classes=[select name ,number_of_student__c , mycount__c from class__c];
    for(Student__c st: trigger.new)
    {
        for(class__c cl:classes){
            if(String.valueOf(cl.id)==String.valueOf(st.class__c)){
                cl.myCount__c +=1;
                    //(Integer)cl.number_of_student__c ;
                    
            }
            //System.debug(classes);
            update classes;
        }
    }
        }