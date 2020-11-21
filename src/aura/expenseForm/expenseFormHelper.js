/**
 * Created by yuriy on 21.11.20.
 */

({
    createExpense: function(component, newExpense) {
        let createEvent = component.getEvent("createExpense");
        createEvent.setParams({ "expense": newExpense });
        createEvent.fire();
    },
});