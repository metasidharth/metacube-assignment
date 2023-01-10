trigger Ass6_Q2 on Class__c (before delete) {
    
   for(Class__c cl:trigger.old)
   {
       Integer femaleCount=(integer)[select count(id)  from student__c where sex__c ='female' and class__c=:cl.id ].get(0).get('expr0');
      // Student__c st=students.get(0);
       if(femaleCount>1){
           cl.addError('you cannot delete class  if there are more than one Female students.');
       }
   }
}