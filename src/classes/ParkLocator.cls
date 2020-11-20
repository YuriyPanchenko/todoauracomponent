/**
 * Created by yuriy on 16.11.20.
 */

public with sharing class ParkLocator {
    public static List<String> country(String countryName){
        ParkService.ParksImplPort parks = new ParkService.ParksImplPort();
        return parks.byCountry(countryName);
    }
}