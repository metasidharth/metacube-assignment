//Create two new fields of type Lookup in Opportunity named BillToContact(Contact) and
//Manager(Account). Create a function in class which is called on Update of Opportunities (from Trigger),
//it takes List<Opportunity> as argument and check if BillToContact field is not Blank and Manager is
//Blank then populate Manager field by related account which is linked with the contact given in
//BillToContact field..


public class Ass3_ques7 {
    public static List<Opportunity> UpdateofOpportunities(List<Opportunity> oppertunities){
        for(Opportunity opp:oppertunities){
            if(!String.isBlank(opp.BillToContact__c) && String.isBlank(opp.Manager__c)  ){
               list<contact> contacts= [select AccountId from contact where id=:opp.BillToContact__c ];
                //it gives the account id from contact object which has parnt relation from billToContact field
                
                list<account> relatedAcc=[select id,name from account where id=:contacts.get(0).AccountId];
                opp.Manager__c=relatedAcc.get(0).id;
                
            }
        }
        update oppertunities;
        return oppertunities;
    }
}
// list<opportunity> opp=[select id ,name, manager__c, billToContact__c from opportunity];
//Ass3_ques7.UpdateofOpportunities(opp);