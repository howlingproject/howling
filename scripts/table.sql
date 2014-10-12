/* 공간 SPACE */
CREATE TABLE `space` (
  `spaceId` int(11) NOT NULL AUTO_INCREMENT COMMENT '공간번호',
  `description` varchar(2000) NOT NULL COMMENT '공간설명',
  `title` varchar(100) NOT NULL COMMENT '공간제목',
  `titleImage` varchar(45) COMMENT '공간이미지명',
  `titleImagePath` varchar(200) COMMENT '공간이미지경로',
  `isPrivate` char(1) NOT NULL DEFAULT 'N' COMMENT '공개여부',
  `isDeleted` char(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부',
  `layoutType` varchar(20) NOT NULL COMMENT '화면구성타입(left, default, right) ',
  `insertDate` datetime NOT NULL COMMENT '입력일',
  `updateDate` datetime NOT NULL COMMENT '수정일',
  `insertUserId` int(11) NOT NULL COMMENT '입력자',
  `updateUserId` int(11) NOT NULL COMMENT '수정자',
  PRIMARY KEY (`spaceId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8

