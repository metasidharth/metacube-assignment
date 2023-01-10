public class Ass3_ques2 {
    
    public static  Integer workingDays(Date start, Date endDate){
        Integer difference =start.daysBetween(endDate);
        Date temp=start;
        List<Date>dates=new List<Date>();
        List<String>days=new List<String>();
        for(Integer i=0;i<difference;i++){
            DateTime dt=(DateTime)temp;
            String day=dt.formatGmt('EEE'); 
            
            if(day !='Sat' && day !='Sun'){
            dates.add(temp);
            days.add(day);
            }
            temp=temp.addDays(1);            
        }
        System.debug(dates.size());
        //System.debug(days);
         return dates.size();
    }

}
//Ass3_ques2.workingDays(Date.parse('12/06/2022'),Date.parse('12/28/2022'));