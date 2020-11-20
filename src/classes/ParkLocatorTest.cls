/**
 * Created by yuriy on 16.11.20.
 */
@IsTest
public with sharing class ParkLocatorTest {
    @isTest
    static void testCountry() {
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call the method that invokes a callout
        String country = 'Japan';
        List<String> parks = new List<String>();
        parks.add('Shiretoko National Park');
        parks.add('Oze National Park');
        parks.add('Hakusan National Park');
        List<String> result = ParkLocator.country(country);
        // Verify that a fake result is returned
        System.assertEquals(result, parks);
    }
}