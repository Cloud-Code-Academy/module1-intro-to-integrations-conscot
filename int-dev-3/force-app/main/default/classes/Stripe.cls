public with sharing class Stripe {
    
    public Stripe() {

    }

    public static void getCharges() {
        String endpoint = '';

        HttpRequest req = new HttpRequest();
        req.setEndpoint('https');
        req.setMethod('GET');
        req.setHeader('Authorization', 'Basic'); 
        req.setMethod('Content-Type', 'application/json');

        
        String stripe
}