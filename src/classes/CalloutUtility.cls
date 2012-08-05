public with sharing class CalloutUtility {
  private final String TEST_RESULT = '{ "coordinates": null, ..., "in_reply_to_status_id": null }';

  public HttpRequest buildRequest(String url, String method){
    HttpRequest request = new HttpRequest();

    // Prepare request ...

    return request;
  }

  public String doCallout(HttpRequest request){
    Http h = new Http();
    String result = '';

    if (Test.isRunningTest()){
      result = TEST_RESULT;
    } else {
      HttpResponse response = h.send(request);
      result = response.getBody();
    }

    return result;
  }
}
