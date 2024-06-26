package com.record.service;

import com.record.entity.Example;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 五铢钱
 * @since 2024-03-18
 */
public interface ExampleService extends IService<Example> {


    /**
     * 通过案例种类id查询案例信息
     * @param exampleType
     * @return
     */
    Example selectExampleByExampleType(Integer exampleType);
}
