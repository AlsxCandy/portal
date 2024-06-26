package com.record.controller;

import com.record.entity.Type;
import com.record.service.TypeService;
import com.record.utils.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author 五铢钱
 * @since 2024-03-18
 */
@RestController
@Api(tags = "耳机类型")
public class TypeController {

    @Autowired
    private TypeService typeService;


    @ApiOperation(value = "获取所有的耳机种类")
    @GetMapping("/findAllType")
    public Result findAllType(){
        List<Type> types = typeService.selectAllType();
        return Result.success(types);
    }

}
