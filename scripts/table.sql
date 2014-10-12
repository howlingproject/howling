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


/* 공간 접근자 */

CREATE TABLE `howling`.`spaceaccessuser` (
  `spaceid` INT NOT NULL COMMENT '공간번호 FK',
  `userId` INT NOT NULL COMMENT '사용자 아이디 ',
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부',
  `insertDate` DATETIME NULL COMMENT '입력일 ',
  `updateDate` DATETIME NULL COMMENT '수정일',
  `insertUserId` INT NULL COMMENT '입력자',
  `updateUserId` INT NULL COMMENT '수정자 ',
  PRIMARY KEY (`spaceid`, `userId`),
  CONSTRAINT `spaceId`
    FOREIGN KEY (`spaceid`)
    REFERENCES `howling`.`space` (`spaceId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE=INNODB DEFAULT CHARSET=utf8;
