//Create one custom field in Account object (ContactIDs), it would have comma separated list of all
//related Contact IDs. Create a class and a static function which takes a ContactID as argument and
//check if Account’s ContactIDs field is Null or Not Null

//IF Null, then fetch all related Account Contacts and store their IDs as a comma separated list in it.

//IF Not Null, then check, Is ContactID already exist in the field value, if not then append it on that
//value.
public class Ass3_6 {
 
    public static String getrecords(id contactId){
       list<string> comaSepratedString=new list<string>();
        list<id> contactids=new list<Id>();
        List<Contact> matchedContact=[select id, AccountId from contact where id =:contactId];
        list<account> accounts =[select id ,(select id from contacts),ContactIds__c from account where id=:matchedContact.get(0).AccountId];
        //system.debug(idlist);
       Account acc= accounts.get(0);
        if(String.isBlank(acc.ContactIds__c)){ 
            for(Contact con:acc.Contacts)    {
                System.debug(con.id);
                contactIds.add(con.id);
                
            }  
            acc.ContactIDs__c=String.join(contactIds,',');
            System.debug(acc.ContactIDs__c);
            
            
     }
        else{
            if(!contactIds.contains(contactId)){
               acc.ContactIDs__c+=',';
                acc.ContactIDs__c+=contactId;
                System.debug('else block '+ acc.ContactIDs__c );
                
            }
            
        }
        update acc;
          return acc.contactIds__c;
            }
               
}