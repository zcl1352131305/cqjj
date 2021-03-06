package cn.zoucl.cloud.common.utils;

import com.alibaba.fastjson.JSONObject;

/**
 * Created by zcl on 2017/6/1 0001.
 * 返回结果类
 */
public class Result<T extends Object> {

    /** 结果代码  参考ResultCode */
    private String code;
    /** 信息 */
    private String message;
    /** 数据 */
    private T result;

    public Result() {
        this.setCode(ResultCode.SUCCESS);
        this.setMessage("成功！");

    }

    public Result(ResultCode code) {
        this.setCode(code);
        this.setMessage(code.msg());
    }

    public Result(ResultCode code, String message) {
        this.setCode(code);
        this.setMessage(message);
    }

    public Result(ResultCode code, String message, T data) {
        this.setCode(code);
        this.setMessage(message);
        this.setResult(data);
    }

    /**
     * 业务处理成功
     * @param message 返回信息
     * @param result 返回数据
     * @return
     */
    public static Result success(String message,Object result){
        return new Result(ResultCode.SUCCESS,message,result);
    }

    /**
     * 业务处理成功
     * @param message 返回信息
     * @return
     */
    public static Result success(String message){
        return success(message,null);
    }

    /**
     * 业务处理成功
     * @param result 返回对象
     * @return
     */
    public static Result success(Object result){
        return success("成功！",result);
    }

    public static Result success(){
        return new Result();
    }


    /**
     * 错误
     * @param message 错误信息
     * @return
     */
    public static Result fail(String message){
        return new Result(ResultCode.FAIL,message);
    }

    /**
     * 参数错误
     * @return
     */
    public static Result fail(){
        return new Result(ResultCode.FAIL,"失败！");
    }



    public String getCode() {
        return code;
    }
    public void setCode(ResultCode code) {
        this.code = code.val();
    }
    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }
    public Object getResult() {
        return result;
    }
    public void setResult(T result) {
        this.result = result;
    }
}
