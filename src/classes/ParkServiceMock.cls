/**
 * Created by yuriy on 16.11.20.
 */
@IsTest
global with sharing class ParkServiceMock implements WebServiceMock{
    global void doInvoke(
            Object stub,
            Object request,
            Map<String, Object> response,
            String endpoint,
            String soapAction,
            String requestName,
            String responseNS,
            String responseName,
            String responseType) {
        // start - specify the response you want to send
        List<String> parks = new List<String>();
        parks.add('Shiretoko National Park');
        parks.add('Oze National Park');
        parks.add('Hakusan National Park');
        ParkService.byCountryResponse response_x =
                new ParkService.byCountryResponse();
        response_x.return_x = parks;
        response.put('response_x', response_x);
    }
}