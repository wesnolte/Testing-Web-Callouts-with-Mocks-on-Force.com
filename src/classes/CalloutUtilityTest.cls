@isTest
private class CalloutUtilityTest {
  private final static String TWITTER_TWEET_RESULT = '{ "coordinates": null, ..., "in_reply_to_status_id": null }';

  public static testmethod void testTwitterCallout(){
    CalloutUtility cUtil = new CalloutUtility();

    System.assertEquals(TWITTER_TWEET_RESULT, cUtil.doCallout(null));
  }
}
