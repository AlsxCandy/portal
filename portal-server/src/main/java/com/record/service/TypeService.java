package com.record.service;

import com.record.entity.Type;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 五铢钱
 * @since 2024-03-18
 */
public interface TypeService extends IService<Type> {


    /**
     * 查询所有的 电梯种类
     * @return
     */
    List<Type> selectAllType();
}
