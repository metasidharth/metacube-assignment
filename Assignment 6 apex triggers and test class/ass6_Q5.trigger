trigger ass6_Q5 on Opportunity (before update) {
  //  In Opportunity, If the stage is changed from another value to CLOSED_WON or CLOSED_LOST,
  //    populates the Close Date field with Today().
    for(Opportunity opp:trigger.new){
        if((opp.stageName=='Closed Won'|| opp.stageName=='Closed Lost') && (Trigger.oldMap.get(opp.id).stagename!='Closed Lost' && Trigger.oldMap.get(opp.id).stagename!='Closed Won')){
           opp.closeDate=Date.today();
        }
        
    }

}