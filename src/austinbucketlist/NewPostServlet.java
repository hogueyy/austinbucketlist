package austinbucketlist;

import static com.googlecode.objectify.ObjectifyService.ofy;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.googlecode.objectify.ObjectifyService;

import austinbucketlist.BlogPost;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewPostServlet extends HttpServlet {

	static {
        ObjectifyService.register(BlogPost.class);
    }
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.sendRedirect("/newPost.jsp");
	}
	
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        UserService userService = UserServiceFactory.getUserService();
        User user = userService.getCurrentUser();
        
        String subject = req.getParameter("subject");
        String content = req.getParameter("content");
        BlogPost post = new BlogPost(user, subject, content);
        ofy().save().entity(post).now();
        resp.sendRedirect("/index.jsp");
    }
}
