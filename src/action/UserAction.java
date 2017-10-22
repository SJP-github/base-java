package action;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import model.User;
import service.UserService;

@Controller
public class UserAction {

	@Autowired
	private UserService ser;
	
	//转到login.jsp页面
		@RequestMapping("/login.html")
		public String toLogin(){
			return "login";
		}
	
		//登录
	@RequestMapping("/login.action")
	public String doLogin(User user,HttpSession session) {
		if(user !=null){
			User findUser = ser.findByUsername(user);
			if(findUser !=null){
				//匹配密码
				if(findUser.getPassword().equals(user.getPassword())){
					//放入session中
					session.setAttribute("sessionUser", findUser);
					
					return "index";
				}
			}
		}
		
		return "login";
	}

	
	
	
	public UserService getSer() {
		return ser;
	}

	public void setSer(UserService ser) {
		this.ser = ser;
	}
	
	
	
}
