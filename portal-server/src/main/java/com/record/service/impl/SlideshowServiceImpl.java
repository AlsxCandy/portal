package com.record.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.record.entity.Slideshow;
import com.record.mapper.SlideshowMapper;
import com.record.service.SlideshowService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 五铢钱
 * @since 2024-03-18
 */
@Service
public class SlideshowServiceImpl extends ServiceImpl<SlideshowMapper, Slideshow> implements SlideshowService {


    @Autowired
    private SlideshowMapper slideshowMapper;


    @Override
    public List<Slideshow> selectAllSlideshow() {
        return slideshowMapper.selectList(
                new LambdaQueryWrapper<Slideshow>()
                        .last("limit 4")
        );
    }
}
