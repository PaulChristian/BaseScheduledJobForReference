
public class AdHocScheduledBatchJob implements Database.batchable, Schedulable { 

  public Database.QueryLocator start(Database.BatchableContext bc){
      String query = [SELECT Id from WHATEVER etc...];
      return Database.getQueryLocator(query);
   }

   public void execute(Database.BatchableContext bc, List<sObject> scope){
      // No-Op
    }

   public void finish(Database.BatchableContext bc){
   }

}
