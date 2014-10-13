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

CREATE TABLE `spaceaccessuser` (
  `spaceId` INT NOT NULL COMMENT '공간번호 FK',
  `userId` INT NOT NULL COMMENT '사용자 아이디 ',
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부',
  `insertDate` DATETIME NULL COMMENT '입력일 ',
  `updateDate` DATETIME NULL COMMENT '수정일',
  `insertUserId` INT NULL COMMENT '입력자',
  `updateUserId` INT NULL COMMENT '수정자 ',
  PRIMARY KEY (`spaceId`, `userId`),
  CONSTRAINT `spaceId`
    FOREIGN KEY (`spaceId`)
    REFERENCES `howling`.`space` (`spaceId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE=INNODB DEFAULT CHARSET=utf8;

/*  위키 메인 */
CREATE TABLE `howling`.`wiki` (
  `wikiId` int(11) NOT NULL AUTO_INCREMENT COMMENT '위키번호',
  `spaceId` int(11) NOT NULL COMMENT '공간번호 FK',
  `title` varchar(200) NOT NULL COMMENT '위키제목',
  `parentsId` int(11) COMMENT '부모 위키번호',
  `orderIdx` int(11) NOT NULL COMMENT '순서',
  `depthIdx` int(11) NOT NULL COMMENT '깊이',
  `contents` text NOT NULL COMMENT '내용',
  `contentsMarkup` text NOT NULL COMMENT '내용마크업소스',
  `isLock` char(1) NOT NULL DEFAULT 'N' COMMENT '편집잠금여부',
  `userId` int(11) NOT NULL COMMENT '작성자번호',
  `userNick` varchar(40) NULL COMMENT '작성자닉네임',
  `viewCount` int(11) NOT NULL COMMENT '조회수',
  `likeCount` int(11) NOT NULL COMMENT '좋아요 수',
  `reportCount` int(11) NOT NULL COMMENT '신고 수',
  `isFixed` char(1) NOT NULL DEFAULT 'N' COMMENT '상단 고정여부',
  `wikiUrl` varchar(100) COMMENT '위키 주소',
  `currentIp` varchar(45) COMMENT '아이피',
  `editReason` varchar(45) COMMENT '수정사유',
  `revision` int(11) NOT NULL DEFAULT 1 COMMENT '버전',
  `isDeleted` char(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부',
  `insertDate` DATETIME  COMMENT '입력일 ',
  `updateDate` DATETIME  COMMENT '수정일',
  `insertUserId` INT  COMMENT '입력자',
  `updateUserId` INT  COMMENT '수정자',
  PRIMARY KEY (`wikiId`),
    FOREIGN KEY (`spaceId`)
    REFERENCES `howling`.`space` (`spaceId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/* 위키 백업 */
CREATE TABLE `howling`.`wikiback` (
  `wikiBackId` int(11) NOT NULL AUTO_INCREMENT COMMENT '위키백업번호',
  `wikiId` int(11) NOT NULL  COMMENT '위키번호',
  `revisionActionType` varchar(20) NOT NULL COMMENT '수정 내역(내용수정, 제목수정, 첨부파일, 내용삭제등)',
  `spaceId` int(11) NOT NULL COMMENT '공간번호 FK',
  `title` varchar(200) NOT NULL COMMENT '위키제목',
  `parentsId` int(11) COMMENT '부모 위키번호',
  `orderIdx` int(11) NOT NULL COMMENT '순서',
  `depthIdx` int(11) NOT NULL COMMENT '깊이',
  `contents` text NOT NULL COMMENT '내용',
  `contentsMarkup` text NOT NULL COMMENT '내용마크업소스',
  `isLock` char(1) NOT NULL DEFAULT 'N' COMMENT '편집잠금여부',
  `userId` int(11) NOT NULL COMMENT '작성자번호',
  `userNick` varchar(40) NULL COMMENT '작성자닉네임',
  `viewCount` int(11) NOT NULL COMMENT '조회수',
  `likeCount` int(11) NOT NULL COMMENT '좋아요 수',
  `reportCount` int(11) NOT NULL COMMENT '신고 수',
  `isFixed` char(1) NOT NULL DEFAULT 'N' COMMENT '상단 고정여부',
  `wikiUrl` varchar(100) COMMENT '위키 주소',
  `currentIp` varchar(45) COMMENT '아이피',
  `editReason` varchar(45) COMMENT '수정사유',
  `revision` int(11) NOT NULL DEFAULT 1 COMMENT '버전',
  `isDeleted` char(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부',
  `insertDate` DATETIME  COMMENT '입력일 ',
  `updateDate` DATETIME  COMMENT '수정일',
  `insertUserId` INT  COMMENT '입력자',
  `updateUserId` INT  COMMENT '수정자',
  PRIMARY KEY (`wikiBackId`),
    FOREIGN KEY (`wikiId`)
    REFERENCES `howling`.`wiki` (`wikiId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/* 위키 답변 */
CREATE TABLE `howling`.`wikifiles` (
  `fileId` INT NOT NULL AUTO_INCREMENT COMMENT '파일번호',
  `wikiId` INT NOT NULL COMMENT '위키번호',
  `realName` VARCHAR(200) NULL COMMENT '파일명',
  `saveName` VARCHAR(200) NULL COMMENT '파일저장명',
  `path` VARCHAR(200) NULL COMMENT '경로',
  `fileSize` INT NULL COMMENT '사이즈',
  `fileType` VARCHAR(200) NULL COMMENT '타입',
  `userId` INT NOT NULL COMMENT '사용자번호',
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부',
  `insertDate` DATETIME NOT NULL COMMENT '입력일',
  PRIMARY KEY (`fileId`),
  INDEX `wikiId_idx` (`wikiId` ASC),
  CONSTRAINT `fileId`
    FOREIGN KEY (`wikiId`)
    REFERENCES `howling`.`wiki` (`wikiId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/* 피드 */

/* 공간 SPACE */
CREATE TABLE `feed` (
  `feedId` int(11) NOT NULL AUTO_INCREMENT COMMENT '피드번호',
  `userId` int(11) NOT NULL COMMENT '작성자번호',
  `userNick` varchar(40) NULL COMMENT '작성자닉네임',
  `isShared` char(1) NOT NULL DEFAULT 'N' COMMENT '공유여부',
  `sharedContentsType` varchar(200) NOT NULL COMMENT '페이스북 컨텐츠타입',
  `sharedResponseId` varchar(200) NOT NULL COMMENT '페이스북 리턴아이디',
  `likeCount` int(11) NOT NULL COMMENT '좋아요 수',
  `claimCount` int(11) NOT NULL COMMENT '신고수',
  `contents` text NOT NULL COMMENT '내용',
  `isPrivate` char(1)  NOT NULL DEFAULT 'N' COMMENT '공개 여부',
  `sharedFB` varchar(45) COMMENT '페이스북 공유',
  `sharedTW` varchar(45) COMMENT '트위터 공유',
  `sharedGP` varchar(45) COMMENT '구글 플러스 공유',
  `feedUrl` varchar(100) COMMENT '피드 주소',
  `isDeleted` char(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부',
  `insertDate` datetime NOT NULL COMMENT '입력일',
  `updateDate` datetime NOT NULL COMMENT '수정일',
  `insertUserId` int(11) NOT NULL COMMENT '입력자',
  `updateUserId` int(11) NOT NULL COMMENT '수정자',
  PRIMARY KEY (`feedId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


