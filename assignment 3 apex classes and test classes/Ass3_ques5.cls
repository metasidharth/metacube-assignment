public class Ass3_ques5 implements Schedulable{

    public void execute(SchedulableContext sc){
        List<Opportunity> opplist =[SELECT ID, LastModifiedDate from Opportunity where LastModifiedDate = last_N_Days:30];
 			sendmail();
                    
    }
     public void sendmail()
                        {// Please add your logic according to requirement
                                    Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
                                    string [] toaddress= New string[]{'sharmasidhart0@gmail.com'};
                                    email.setSubject('Testing Apex Scheduler-Subject');
                                    email.setPlainTextBody('Testing Apex Scheduler-Body');
                                    email.setToAddresses(toaddress);
                                    Messaging.sendEmail(New Messaging.SingleEmailMessage[]{email});
                        }
}
//Create a Scheduler to mail to Opportunity Owner, if not modified for last 30 days.