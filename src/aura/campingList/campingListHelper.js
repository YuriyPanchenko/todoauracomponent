/**
 * Created by yuriy on 19.11.20.
 */

({
    createItem: function(component, item) {
        console.log('helper')
        let action = component.get("c.saveItem");
        action.setParams({
            "savedItem": item
        });
        action.setCallback(this, function(response){
            let state = response.getState();
            if (state === "SUCCESS") {
                console.log("success");
                let items = component.get("v.items");
                items.push(response.getReturnValue());
                component.set("v.items", items);
            }
        });
        $A.enqueueAction(action);
    },
});