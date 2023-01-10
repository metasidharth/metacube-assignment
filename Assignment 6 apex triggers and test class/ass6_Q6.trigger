trigger ass6_Q6 on Class__c (after update) {
//Create a new PickList “Custom Status” in Class object.(New,Open,Close,Reset) values. When this
//field changed and value is “Reset” now then delete all associated students with related Class.
 list<student__c> students=[select name ,class__c from student__c];
    list <student__c> stList=new list<student__c>();
    for(class__c cl:trigger.new ){
        if(cl.CustomStatus__c=='Reset' && trigger.oldmap.get(cl.id).CustomStatus__c!='Reset'){
            
            for(student__c st:students )  {
                if(string.valueof(st.class__c)==string.valueof(cl.id)){
                    stlist.add(st);
                }
            }
            
        }
        delete stlist;
        
    }
}