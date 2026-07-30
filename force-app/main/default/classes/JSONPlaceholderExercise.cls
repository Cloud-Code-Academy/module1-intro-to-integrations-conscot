public with sharing class JSONPlaceholderExercise {
    
    // The base URL for the external API
    private static final String BASE_URL = 'https://jsonplaceholder.typicode.com';

    /**
     * Exercise 1: Implement a GET request to fetch a post by ID
     */
    public static String getPostById(Integer postId) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        req.setMethod('GET');
        
        Http http = new Http();
        HttpResponse res = http.send(req);
        return res.getBody();
    }
    
    /**
     * Exercise 2: Implement a POST request to create a new post
     */
    public static String createPost(String title, String body, Integer userId) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint(BASE_URL + '/posts');
        req.setMethod('POST');
        
        Map<String, Object> payload = new Map<String, Object>{
            'title' => title,
            'body' => body,
            'userId' => userId
        };
        String jsonBody = JSON.serialize(payload);
        
        req.setBody(jsonBody);
        req.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Http http = new Http();
        HttpResponse res = http.send(req);
        return res.getBody();
    }
    
    /**
     * Exercise 3: Implement a PUT request to update a post
     */
    public static String updatePost(Integer postId, String title, String body, Integer userId) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        req.setMethod('PUT');
        
        Map<String, Object> payload = new Map<String, Object>{
            'id' => postId,
            'title' => title,
            'body' => body,
            'userId' => userId
        };
        String jsonBody = JSON.serialize(payload);
        
        req.setBody(jsonBody);
        req.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Http http = new Http();
        HttpResponse res = http.send(req);
        return res.getBody();
    }
    
    /**
     * Exercise 4: Implement a PATCH request to partially update a post
     */
    public static String patchPostTitle(Integer postId, String title) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        req.setMethod('PATCH');
        
        Map<String, Object> payload = new Map<String, Object>{
            'title' => title
        };
        String jsonBody = JSON.serialize(payload);
        
        req.setBody(jsonBody);
        req.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Http http = new Http();
        HttpResponse res = http.send(req);
        return res.getBody();
    }

    /**
     * Exercise 5: Implement a DELETE request to delete a post by ID
     */
    public static Integer deletePost(Integer postId) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        req.setMethod('DELETE');
        
        Http http = new Http();
        HttpResponse res = http.send(req);
        return res.getStatusCode();
    }
}