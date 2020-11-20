/**
 * Created by yuriy on 18.11.20.
 */

({
    packItem: function (component, event, helper){
        /*component.set("v.item.Packed__c", !component.get("v.item.Packed__c"));*/
        component.set("v.item.Packed__c",true);
        event.getSource().set("v.disabled",true);
    }
});