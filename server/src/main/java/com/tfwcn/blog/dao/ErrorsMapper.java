package com.tfwcn.blog.dao;

import com.tfwcn.blog.models.Errors;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ErrorsMapper {
    int deleteByPrimaryKey(String id);

    int insert(Errors record);

    Errors selectByPrimaryKey(String id);

    List<Errors> selectAll();

    int updateByPrimaryKey(Errors record);
}