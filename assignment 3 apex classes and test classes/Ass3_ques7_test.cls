@IsTest
public class Ass3_ques7_test {
	@IsTest
    public static void managerTest(){
        Account acc=new Account(name='manager account');
        insert acc;
        Contact con= new Contact(lastName='TestContact', accountId=acc.id);
        insert con;
        Opportunity opp= new Opportunity(name='testOpportunity', billToContact__c=con.id,StageName='Closed Won',CloseDate=date.today());
        insert opp;
        list<Opportunity> opportunities=[select name ,manager__c,billToContact__c from opportunity];
         
        System.AssertEquals(acc.id,Ass3_ques7.UpdateofOpportunities(opportunities).get(0).manager__c);
        
        
    }
}