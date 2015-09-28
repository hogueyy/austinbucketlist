package austinbucketlist;

import java.util.Date;

import com.google.appengine.api.users.User;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
public class BlogPost implements Comparable<BlogPost>{
	@Id Long id;
    User user;
    String subject;
    String content;
    Date date;
    
    private BlogPost() {}
    
    public BlogPost(User user, String subject, String content) {
        this.user = user;
        this.subject = subject;
        this.content = content;
        date = new Date();
    }
    
    public User getUser() {
        return user;
    }
    
    public String getSubject() {
        return subject;
    }
    
    public String getContent() {
        return content;
    }
    
    public String getDate() {
        return date.toString();
    }

    @Override
    public int compareTo(BlogPost other) {

        if (date.after(other.date)) {
            return 1;
            
        } else if (date.before(other.date)) {

            return -1;
        }
        
        return 0;
    }
}
