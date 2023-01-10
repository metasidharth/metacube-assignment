trigger DeleteContactIdsTriggerr on Contact (After delete) {
    
    for(Contact con:Trigger.old){
        
        list<account> accounts=[select id ,(select id from contacts), ContactIds__c from account where id=:con.Accountid];
        Account acc= accounts.get(0);
        list<id> contactIdList= acc.ContactIDs__c.split(',');
        
        if(contactIdList.contains(con.id)){
           contactIdList.remove(contactIdList.indexOf(con.id));
        }
        acc.ContactIDs__c=String.join(contactIdList,',') ;
        update acc;
        
    }
}