package com.record.service;

import com.record.entity.Company;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 五铢钱
 * @since 2024-03-18
 */
public interface CompanyService extends IService<Company> {


    /**
     * 查找公司信息
     * @return
     */
    Company selectCompanyInfo();
}
