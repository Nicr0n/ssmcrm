package net.wanho.service;

import net.wanho.model.EmmPosition;

import java.util.List;

public interface EmmPositionService {
    List<EmmPosition> getAllEmmPosition();

    int addPosition(EmmPosition emmPosition);

    Boolean positionNameCheck(String emmPositionName);

    Boolean deletePostionCheck(int id);

    int updatePosition(EmmPosition emmPosition);
}
