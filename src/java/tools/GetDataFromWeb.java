/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import entity.Post;
import java.util.List;
import java.io.IOException;
import java.util.ArrayList;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;



public class GetDataFromWeb {

    private String url= "https://kinhdoanh.vnexpress.net/tin-tuc/bat-dong-san/du-an/page/1.html";
    public GetDataFromWeb() {
        
    }
    
    public  List<Post> getListPost() throws IOException 
    {
          List<Post> arrPost = new ArrayList<>();
       Document  doc = Jsoup.connect(url).timeout(5000).get();
       Element listItem = doc.select(".sidebar_1").first();
       Elements itemChild = listItem.children();
       Element Page = listItem.children().last();
       Elements listCountPage = Page.children();
       int coutChild =itemChild.size()-2;
       int countPage= listCountPage.size()-1;
        System.out.println(coutChild+" "+countPage);
        String urlImg="";
        for(int i=1;i<=countPage;i++)
        {
            String suburl="https://kinhdoanh.vnexpress.net/tin-tuc/bat-dong-san/du-an/page/"+i+".html";
            Document  subdoc = Jsoup.connect(suburl).timeout(5000).get();
            Elements con1 =subdoc.select(".sidebar_1");
            Elements con2 = con1.select(".list_news");
            int count= con2.size();
          
            for(int j = 0; j < count; j++) {
                
              String title=con2.select("h3>a").get(j).attr("title");
              String href=con2.select("h3>a").get(j).attr("href");
            if(!con2.select("img").get(j).attr("src").equals("data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="))
            {
                 urlImg = con2.select("img").get(j).attr("src");
            }
            else
            {
               urlImg = con2.select("img").get(j).attr("data-original");
            }
             
                 String des= con2.select(".description").get(j).ownText();
           
                
                arrPost.add(new Post(href, title, des, urlImg));
            }
            
           
            
//            for (int j = 0; j < coutChild; j++) {
//                  Elements item =subdoc.select(".sidebar_1>.list_news");
//                String title = item.select(".list_news>h3.title_news>a").html();
//                System.out.println(title);
//                System.out.println(item);
//                 item = item.next();
//                 
//            }
        
        } 
        return arrPost;

}
    public static void main(String[] args) throws IOException {
        GetDataFromWeb x = new GetDataFromWeb();
            
        for(Post a:x.getListPost())
        {
            System.out.println(a.getDes());
        }
    }
}