package net.wanho.service;

import net.wanho.model.EmmPosition;

import java.util.List;

public interface EmmPositionService {
    List<EmmPosition> getAllEmmPosition();

    int addPosition(EmmPosition emmPosition);

    Boolean positionNameCheck(String emmPositionName);

    Boolean deletePostionCheck(int id);

    int updatePosition(EmmPosition emmPosition);

    int deletePosition(EmmPosition emmPosition);

    List<EmmPosition> selectByPositionName(String positionName);

    EmmPosition selectById(Integer id);
}
