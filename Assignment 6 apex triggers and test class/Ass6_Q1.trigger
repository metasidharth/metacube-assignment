trigger Ass6_Q1 on Teach__c (before update) {
    for(teach__c t:  trigger.new){
        if( trigger.oldMap.get(t.id).subject__c=='Hindi' && trigger.newMap.get(t.id).subject__c!='Hindi' ){
            t.addError('you are not allowed to insert or update this field');
        }
    }
    
}