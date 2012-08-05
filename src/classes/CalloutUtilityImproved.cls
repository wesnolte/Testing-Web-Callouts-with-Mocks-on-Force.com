public with sharing class CalloutUtilityImproved {
  // An instance of something that conforms to the IHttp interface
  public IHttp httpInstance{get;set;}

  public HttpRequest buildRequest(String url, String method){
    HttpRequest request = new HttpRequest();

    // Prepare request ...

    return request;
  }

  public String doCallout(HttpRequest request){
    String result = '';

    result = httpInstance.send(request);

    return result;
  }
}
