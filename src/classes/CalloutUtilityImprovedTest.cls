@isTest
private class CalloutUtilityImprovedTest {
  private final static String TWITTER_TWEET_RESULT = '{ "coordinates": null, ..., "in_reply_to_status_id": null }';

  public static testmethod void testTwitterCallout(){
    CalloutUtilityImproved cUtil = new CalloutUtilityImproved();
    
    /* Assign our test implementation of IHttp to 
       the instance variable in CalloutUtilityImproved */
    cUtil.httpInstance = new TestHttp();

    /* Note: The type of request we pass here 
       doesn't matter so we can set it to null */

    System.assertEquals(TWITTER_TWEET_RESULT, 
                        cUtil.doCallout(null)); 
  }

  /* Implement the interface for this test */
  public class TestHttp implements IHttp {

    public String send(HttpRequest request) {
      /* Just return the expected result */

      return TWITTER_TWEET_RESULT;
    }
  }
}
