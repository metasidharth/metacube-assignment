trigger StudentLimitReach on Student__c (before insert) {
    list <class__c> classes= [select id, name ,Number_of_Student__c, MaxSize__c from class__c where countCompare__c='true'];
        
    for(student__c st:trigger.new){
        for(class__c cl:classes){
            if(String.valueOf(cl.id)==String.valueOf(st.class__c)){
                st.addError('You cannot insert student in this class ,maxlimit reached');
            }
        }
        
    }
}