package com.nf.tang.controller;

import com.nf.tang.service.LoginService;
import com.nf.tang.service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.InputStreamSource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLConnection;
import java.net.URLEncoder;

@Controller
public class MyController {

    @Autowired
    private TransactionService transactionService;
    @Autowired
    private LoginService loginService;

    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }

    public void setTransactionService(TransactionService transactionService) {
        this.transactionService = transactionService;
    }

    @RequestMapping("index")
    public String index(){
        return "login/index";
    }

    @RequestMapping("/install")
    public String test(){
        return "main/install";
    }
    @RequestMapping("main")
    public String index1(){
        return "main/main";
    }

    //注册用户
    @RequestMapping("/txUserLogin")
    public ModelAndView txUserLogin(String account, String password){
        ModelAndView mav = new ModelAndView();
        try{
            mav.setViewName("main/main");
            loginService.addLogin(account,password);
            return mav;
        }catch (Exception e){
            System.out.println("error");
        }
        mav.setViewName("login/register");
        return mav;
    }

    //文件上传
    public static final String FILE_DIRECTORY = "/Users/cj/Downloads";
    /**
     * 处理文件上传的方法,参数类型写上MultipartFile
     * 然后参数名是页面中文件上传控件的名字
     * @param myfile
     * @return
     */
    @PostMapping("/upload")
    public String upload(MultipartFile myfile){

        //得到上传过来的文件名,一般要改名,比如用UUID
        String filename = myfile.getOriginalFilename();
        String path = FILE_DIRECTORY + File.separator + filename;
        File file = new File(path);
        try {
            myfile.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "ok";
    }

    /**
     * ResponseEntity:是代表Http协议中的头(header)和体(body)
     * InputStreamSouce这个接口是用来得到一个输入流的(InputStream)
     * 得到输入流之后就交给spring mvc框架去读取信息,然后再响应给浏览器
     *
     * 下面代码的核心逻辑就是构建一个HTTP的响应,包含头和体
     * 1. 头包含响应的内容类型
     * 2. 体就包含文件的信息(输入流)
     * @param filename
     * @return
     * @throws IOException
     */
    @RequestMapping("/download")
    public ResponseEntity<InputStreamSource> download(String filename) throws IOException {
        //在mac系统下pathSeparator值为: ,separator值为: /
        String fullPath = FILE_DIRECTORY + File.separator + filename;

        File file = new File(fullPath);
        //这个guess方法是依据文件名来得到媒体类型也就是mime类型,
        // 比如常见有image/jpeg,application/json
        String mediaType = URLConnection.guessContentTypeFromName(filename);
        if(mediaType==null) {
            /*识别不了时,统统用这个,一般用来表示下载二进制数据*/
            mediaType = MediaType.APPLICATION_OCTET_STREAM_VALUE;
        }
        System.out.println("-----debug: mediaType = " + mediaType);
        HttpHeaders respHeaders = new HttpHeaders();
        respHeaders.setContentType(MediaType.parseMediaType(mediaType));

        //attachment :附件的意思,表示告诉浏览器弹出一个另存为窗口来下载文件,
        // inline是直接在浏览器中打开下载的文件
        //需要进行URL编码处理,否则另存为对话框不能显示中文
        respHeaders.setContentDispositionFormData("attachment",
                URLEncoder.encode(filename,"UTF-8"));


        InputStreamResource isr =
                new InputStreamResource(new FileInputStream(file));
        return new ResponseEntity<>(isr, respHeaders, HttpStatus.OK);
    }

}
