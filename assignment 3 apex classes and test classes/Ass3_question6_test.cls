@IsTest
public class Ass3_question6_test {
    @IsTest
    public static void testFunction(){
        Account acc= new Account(name ='accountName ');
        insert acc;
        list<Contact> contacts= new list<contact>();
        for(integer i=0;i<5;i++){
            Contact con=new contact(lastName='sid '+i,AccountId=acc.id);
            contacts.add(con);
        }
        insert contacts;
        List<id> ldlist= new list<id>();
        for(contact con: contacts){
            ldlist.add(con.id);
        }
        
        String str= String.join(ldlist,',');   
      String  str2= Ass3_6.getrecords(ldlist.get(0));
        System.debug('test class String '+ str);
        
        System.debug('test class accountids '+ str2);
        System.assertEquals(str,str2);
    }
}