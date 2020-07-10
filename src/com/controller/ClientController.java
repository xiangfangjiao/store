package com.controller;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pojo.Come;
import com.pojo.Goods;
import com.pojo.User;
import com.service.ClientService;
import com.service.UserService;
import com.alibaba.fastjson.JSON;
import com.mysql.jdbc.StringUtils;


@Controller
@RequestMapping("/client")
public class ClientController {
	@Resource
	private UserService userService;
	@Resource
	private ClientService clientService;
	private String userName;
	
	
	
	// 跳转到 wangpsw 页面
		@RequestMapping(value="/wangpsw",method=RequestMethod.GET)
		public String clientAlterPassword(Model model,HttpSession session) {
			model.addAttribute("user",session.getAttribute("loginer"));
			return "wangpsw";
		}
		//忘记密码
		@RequestMapping(value="/wangpsw",method=RequestMethod.POST)
		public String wangpsw(String userName,String yzm,HttpSession session,Model model) {
			// 根据账户userName查找账户
			User user = clientService.findUserByName1(userName);
			if(null == user) {
				model.addAttribute("error", "账户不存在");
				return "wangpsw";
			}
			// 获取账户邮箱
			String email = user.getUserEmail();
			if(null == email) {
				model.addAttribute("error", "未设置邮箱，无法重置");
				return "wangpsw";
			}
			String regEx1 = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
			Pattern p = Pattern.compile(regEx1);
			Matcher m = p.matcher(email);
			if(!m.matches()){
				model.addAttribute("error", "邮箱错误，无法重置");
				return "wangpsw";
	        }
			// 重置密码为6个6，并且发送到邮箱
			user.setUserPsw("666666");
			clientService.updateUserPswById(user);
			Properties props = new Properties();
			// 设置发送邮件的邮件服务器的属性（这里使用网易的smtp服务器，也可以使用其他邮箱服务器，
			// 什么邮箱就要使用对应的服务器，比如163邮箱服务器，就写“smtp.163.com”）
			props.put("mail.smtp.host","smtp.163.com");
			// 需要经过授权，也就是有户名和密码的校验，这样才能通过验证（一定要有这一条）
			props.put("mail.smtp.auth", "true");
			// 用刚刚设置好的props对象构建一个session
			Session emailSession = Session.getDefaultInstance(props);
			// 用session为参数定义消息对象
			MimeMessage message = new MimeMessage(emailSession);
			try {
				// 加载发件人地址
				message.setFrom(new InternetAddress("你的邮箱地址，比如123@qq.com"));
				// 加载收件人地址
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(user.getUserEmail()));
				// 加载标题
				message.setSubject("密码重置");
				// 向multipart对象中添加邮件的各个部分内容，包括文本内容和附件
				Multipart multipart = new MimeMultipart();

				// 设置邮件的文本内容
				BodyPart contentPart = new MimeBodyPart();
				contentPart.setText("重置密码成功！新密码为 666666");
				multipart.addBodyPart(contentPart);

				// 将multipart对象放到message中
				message.setContent(multipart);
				// 保存邮件
				message.saveChanges();
				// 发送邮件
				Transport transport = emailSession.getTransport("smtp");
				// 连接服务器的邮箱
				transport.connect("smtp.163.com","你的邮箱账号","你的邮箱密码");
				// 把邮件发送出去
				transport.sendMessage(message, message.getAllRecipients());
				transport.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			model.addAttribute("error","密码重置成功，请到邮箱查看");
			
			return "logins";
		
			
		}
		
		//跳转到sousuo页面,模糊搜索
		@RequestMapping("/sousuo")
		public String clientViewSousuo(Goods goods ,Model model) {
			List<Goods> items = clientService.getItemByXxx();
			model.addAttribute("items", items); // 将数据放在model中
			return "sousuo";
		}
		
		// 跳转到personal 页面
		@RequestMapping(value="/personal",method=RequestMethod.GET)
		public String clientAlterUser(Model model,HttpSession session) {
			model.addAttribute("user",session.getAttribute("loginer"));
			return "personal";
		}
		// 修改用户信息
		@RequestMapping(value="/personal",method=RequestMethod.POST)
		public String clientAlterUser(User user,HttpSession session,
				Model model) {
			clientService.updateUserById(user);
			// 重新获取登录用户的信息
			User newUser = clientService.findUserByName(user.getUserName());
			session.setAttribute("loginer",newUser);
			model.addAttribute("user", newUser);
			model.addAttribute("error","个人信息修改完毕！");
			return "personal";
		}
		// 处理头像上传功能
		@RequestMapping(value="/upload",method=RequestMethod.POST)
		@ResponseBody
		public Object upload(String userId,MultipartFile photo,HttpServletRequest request) {
			String fileName = null;
			Map<String,String> status = new HashMap<String, String>();
			//判断文件是否为空
			if(!photo.isEmpty()){
				String path = request.getSession().getServletContext()
						.getRealPath("statics"+File.separator+"file");//文件上传路径
				String oldFileName = photo.getOriginalFilename();//原文件名
				String prefix=FilenameUtils.getExtension(oldFileName);//原文件后缀 
				int filesize = 1048576;//1M
		        if(photo.getSize() >  filesize){//上传大小不得超过 1M
		        	status.put("status","文件不能超过1M");
		        	return JSON.toJSONString(status);
	            }else if(prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") 
	            		|| prefix.equalsIgnoreCase("gif")){//上传图片格式不正确
	            	Random random = new Random();
	            	fileName = userId+new Date().getTime()+random.nextInt(100)+"."+prefix;
	                File targetFile = new File(path,fileName);
	                try {  
	                	photo.transferTo(targetFile);  //上传文件
	                } catch (Exception e) {  
	                    e.printStackTrace();
	                }
	            }else{
	            	status.put("status","图片格式不对");
	            	return JSON.toJSONString(status);
	            }
			}
			// 修改数据库中对应 userName 的 userPhoto
			clientService.updateUserPhotoById(userName, fileName);
			// 修改 loginer 的头像
			((User)request.getSession().getAttribute("loginer")).setUserPhoto(fileName);
			status.put("status","success");
			status.put("filename", fileName);
			
			return JSON.toJSONString(status);
		}
		
		//跳转到修改密码页面
		@RequestMapping(value="/gaipassword",method=RequestMethod.GET)
		public String clientViewGaipassword(Model model,HttpSession session) {
			model.addAttribute("user",session.getAttribute("loginer"));
			return "gaipassword";
		}
		// 修改密码功能
		@RequestMapping(value="/gaipassword",method=RequestMethod.POST)
		public String clientAlterPassword(@Valid User user,BindingResult bindingResult,
				Model model,String newUserPsw,String rNewUserPsw,HttpSession session) {
			model.addAttribute("user",user);
			User loginer = (User)session.getAttribute("loginer");
			// 校验原密码是否符合要求
			if(bindingResult.hasErrors()) {
				return "gaipassword";
			}
			// 校验新密码长度是否大于等于5个字符
			if(StringUtils.isNullOrEmpty(newUserPsw) 
					|| newUserPsw.length()<5) {
				model.addAttribute("error", "新密码长度不能少于5个字符");
				return "gaipassword";
			}
			// 验证新密码和确认密码是否相同
			if(!newUserPsw.equals(rNewUserPsw)) {
				model.addAttribute("error", "新密码和确认密码不同");
				return "gaipassword";
			}
			// 验证原始密码是否正确
			if(!DigestUtils.md5Hex(user.getUserPsw()).equals(loginer.getUserPsw())) {
				model.addAttribute("error", "原密码不正确");
				return "gaipassword";
			}
			// 调用服务，修改密码
			user.setUserPsw(newUserPsw);
			clientService.updateUserPswById(user);
			model.addAttribute("error", "修改密码成功");
			session.removeAttribute("loginer");
			return "index";
		}
		
		
	//跳转到about页面
	@RequestMapping(value="/about",method=RequestMethod.GET)
	public String clientViewAbout(Model model) {
		return "about";
	}
	

	
		

	//跳转到member页面
			@RequestMapping("/member")
			public String clientViewMember() {
				return "member";
			}
		
		//跳转到single页面
				@RequestMapping("/single")
				public String clientViewSingle() {
					return "single";
				}
		
		//跳转到products页面
		@RequestMapping("/products")
		public String clientViewProducts() {
			return "products";
		}
		

		//跳转到products1页面
		@RequestMapping("/products1")
		public String clientViewProducts1() {
			return "products1";
		}
		

		//跳转到products2页面
		@RequestMapping("/products2")
		public String clientViewProducts2() {
			return "products2";
		}
		

		//跳转到mail页面
		@RequestMapping(value="/mail",method=RequestMethod.GET)
		public String clientViewMail(@ModelAttribute Come come) {
			return "mail";
		}
		// 实现功能
		@RequestMapping(value="mail",method=RequestMethod.POST)
		public String clientViewMail(@Valid Come come,BindingResult bindingResult,
				Model model) {
			// 添加到数据库中
			clientService.addNewCome(come);
			model.addAttribute("error", "发送成功");
			return "mail";
		}
		

		//跳转到faq页面
		@RequestMapping("/faq")
		public String clientViewFaq() {
			return "faq";
		}

		//跳转到pay页面
		@RequestMapping("/pay")
		public String clientViewPay() {
			return "pay";
		}
		//跳转到cksingle页面
				@RequestMapping("/cksingle")
				public String cksingl() {
					return "cksingle";
				}
				
				//跳转到guccisingle页面
				@RequestMapping("/guccisingle")
				public String guccisingl() {
					return "guccisingle";
				}
						
				//跳转到macsingle页面
				@RequestMapping("/macsingle")
				public String macsingle() {
					return "macsingle";
				}
							
				//跳转到mksingle页面
				@RequestMapping("/mksingle")
				public String mksingle() {
					return "mksingle";
				}
						
				//跳转到yslsingle页面
					@RequestMapping("/yslsingle")
					public String yslsingl() {
						return "yslsingle";
					}
				
					//跳转到nikesingle页面
					@RequestMapping("/single1")
					public String nikesingl() {
						return "single1";
					}
					
					
					//跳转到adsingle页面
					@RequestMapping("/adsingle")
					public String adsingle() {
						return "adsingle";
					}
					
					
					//跳转到bmsingle页面
					@RequestMapping("/bmsingle")
					public String bmsingle() {
						return "bmsingle";
					}
					
					
					//跳转到jfxsingle页面
					@RequestMapping("/jfxsingle")
					public String jfxsingle() {
						return "jfxsingle";
					}
					
					//跳转到kcsingle页面
					@RequestMapping("/kcsingle")
					public String kcsingle() {
						return "kcsingle";
					}
					
					//跳转到kwsingle页面
					@RequestMapping("/kwsingle")
					public String kwsingle() {
						return "kwsingle";
					}
					
					//跳转到glfsingle页面
					@RequestMapping("/glfsingle")
					public String glfsingle() {
						return "glfsingle";
					}
					
					//跳转到dlnsingle页面
					@RequestMapping("/dlnsingle")
					public String dlnsingle() {
						return "dlnsingle";
					}
					
					//跳转到kdysingle页面
					@RequestMapping("/kdysingle")
					public String kdysingle() {
						return "kdysingle";
					}

}
