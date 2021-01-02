package cn.iocoder.dashboard.modules.system.controller.common;

import cn.iocoder.dashboard.common.pojo.CommonResult;
import cn.iocoder.dashboard.modules.system.controller.common.vo.SysCaptchaImageRespVO;
import cn.iocoder.dashboard.modules.system.service.common.SysCaptchaService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

import static cn.iocoder.dashboard.common.pojo.CommonResult.success;

@Api(tags = "验证码 API")
@RestController
@RequestMapping("/captcha")
public class SysCaptchaController {

    @Resource
    private SysCaptchaService captchaService;

    @ApiOperation("生成图片验证码")
    @GetMapping("/get-image")
    private CommonResult<SysCaptchaImageRespVO> getCaptchaImage() {
        return success(captchaService.getCaptchaImage());
    }

}
