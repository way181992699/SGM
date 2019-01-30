package com.ym.demo.utils;


import com.ym.demo.pojo.TestBean;
import com.ym.response.Result;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;



@Aspect
@Configuration
@Component
public class TestAop {

    @Autowired
    private TestBean testBean;

    /**
     * 前置通知
     */
    @Before(value = "execution(* com.ym.demo.controller.AopController.*(..))")
    public void before() {
        System.out.println("前置通知....");
    }
//    /**
//     * 前置通知
//     */
//    @Pointcut("within(com.ym.demo.controller.AopController)")
//    public void before() {
//        System.out.println("前置通知....");
//    }

    /**
     * 后置通知
     * returnVal,切点方法执行后的返回值
     */
    @AfterReturning(value = "execution(* com.ym.demo.controller.AopController.*(..))", returning = "returnVal")
    public void AfterReturning(Object returnVal) {
        System.out.println("后置通知...." + returnVal);
    }


    /**
     * 环绕通知
     *
     * @param joinPoint 可用于执行切点的类
     * @return
     * @throws Throwable
     */
    @Around("execution(* com.ym.demo.controller.AopController.*(..))")
    public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
        System.out.println("环绕通知前....num的值为:" + testBean.getVal());
        Object obj = (Object) joinPoint.proceed();
        Result r = (Result) obj;
        if (!r.isSuccess()){
            if (!ExistUtils.StrIsEmpty(r.getReason())) {
                return Result.failed("报错啦");
            }
        }
        System.out.println("环绕通知后....num的值为:" + testBean.getVal());
        return obj;

    }

//    @Around("execution(* com.ym.demo.controller.AopController.*(..))")
//    public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
//        Object[] args = joinPoint.getArgs();
//        Long a =  new Long(1548051656);
//        if (args != null && args.length > 0 && args[0].getClass() == Long.class) {
//            if ((long)args[0]>a) {
//                return "空数据";
//            }
//        }
//        System.out.println("环绕通知前....");
//        Object obj = (Object) joinPoint.proceed();
//        System.out.println("环绕通知后....");
//        return obj;
//    }

    /**
     * 抛出通知
     *
     * @param e
     */
    @AfterThrowing(value = "execution(* com.ym.demo.controller.AopController.*(..))", throwing = "e")
    public void afterThrowable(Throwable e) {
        System.out.println("出现异常:msg=" + e.getMessage());
//        return "出现异常:msg=" + e.getMessage();
    }

    /**
     * 无论什么情况下都会执行的方法
     */
    @After(value = "execution(* com.ym.demo.controller.AopController.*(..))")
    public void after() {
        System.out.println("最终通知....");
    }
}
