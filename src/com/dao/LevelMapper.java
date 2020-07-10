package com.dao;

import com.pojo.Level;

public interface LevelMapper {
	Level findLevelByMessage(String levelMessage);
}
