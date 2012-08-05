public class TwitterHttp implements IHttp {

  public String send(HttpRequest request) {
    String result = '';

    /* We want to make a callout so we'll 
       use Http */
    Http h = new Http();

    result = h.send(request).getBody();

    return result;
  }
}
