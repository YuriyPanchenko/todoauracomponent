public with sharing class AnimalLocator {
    public static String getAnimalNameById(Integer id){
        String name = '';
        /*https://th-apex-http-callout.herokuapp.com/animals/id*/
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            Map<String, Object> responseMap =  (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String, Object> animal = (Map<String, Object>) responseMap.get('animal');
            name = String.valueOf(animal.get('name'));
        }
        return name;
    }
}