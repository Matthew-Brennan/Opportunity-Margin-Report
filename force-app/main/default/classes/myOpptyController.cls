public class myOpptyController {

    public List<Opportunity> opptyList;

    public myOpptyController() {

    opptyList = [SELECT Id,Name,Account.Name, 

                                  (SELECT Product2Id, Vendor_Quote_Number__c, Quantity, Manufacturer__c, Product_Details__c, UnitPrice, TotalPrice, Client_Unit_Price__c, Client_Total_Price__c, Markup_Percent__c, EB_Profit__c, Profit_as_Percentage__c FROM OpportunityLineItems) 

                        FROM Opportunity WHERE Id =: ApexPages.currentPage().getParameters().get('Id')];

       }

    public List<Opportunity> getopptyList() {

        return opptyList;

    }

}