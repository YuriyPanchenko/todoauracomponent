/**
 * Created by yuriy on 19.11.20.
 */

public with sharing class CampingListController {
    @AuraEnabled
    public static List<Camping_Item__c> getItems(){
        System.debug('getItems');
        return [SELECT Name, Quantity__c, Price__c, Packed__c
                FROM Camping_Item__c];
    }
    
    @AuraEnabled
    public static Camping_Item__c saveItem(Camping_Item__c savedItem) {
        // Perform isUpdateable() checking first, then
        System.debug(savedItem);
        upsert savedItem;
        return savedItem;
    }

}