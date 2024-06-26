package com.record.service;

import com.record.entity.Designer;
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
public interface DesignerService extends IService<Designer> {


    /**
     * 查找所有的设计师信息
     * @return
     */
    List<Designer> selectDesigners();
}
