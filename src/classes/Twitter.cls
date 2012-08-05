public with sharing class Twitter {
	
  public String updateTwitter(String tweet) {
	 String url = 'https://api.twitter.com/1/statuses/update.json';
   String method = 'POST';
   String result = '';

   CalloutUtilityImproved cui = new CalloutUtilityImproved();
   HttpRequest request = cui.buildRequest(url, method);

   cui.httpInstance = new TwitterHttp();

   result = cui.doCallout(request);

   return result; 
	}
}
