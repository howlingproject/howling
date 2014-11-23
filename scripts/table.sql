/* 공간 SPACE */
CREATE TABLE `space` (
  `spaceId` int(11) NOT NULL AUTO_INCREMENT COMMENT '공간번호',
  `description` varchar(2000) COMMENT '공간설명',
  `title` varchar(100) NOT NULL COMMENT '공간제목',
  `titleImage` varchar(45) COMMENT '공간이미지명',
  `titleImagePath` varchar(200) COMMENT '공간이미지경로',
  `isPrivate` char(1) NOT NULL DEFAULT 'N' COMMENT '공개여부',
  `isDeleted` char(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부',
  `layoutType` varchar(20) NOT NULL COMMENT '화면구성타입(left, default, right) ',
  `insertDate` datetime NOT NULL COMMENT '입력일',
  `updateDate` datetime COMMENT '수정일',
  `insertUserId` int(11) NOT NULL COMMENT '입력자',
  `updateUserId` int(11) COMMENT '수정자',
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


CREATE  TABLE `howling`.`feed_file` (
  `feedFileId` INT NOT NULL AUTO_INCREMENT COMMENT '피드첨부번호' ,
  `feedId` INT NOT NULL ,
  `realName` VARCHAR(45) NOT NULL COMMENT '파일명' ,
  `saveName` VARCHAR(45) NOT NULL COMMENT '파일저장명' ,
  `fileSize` INT NOT NULL ,
  `fileType` VARCHAR(20) NOT NULL COMMENT '파일타입' ,
  `userId` INT NOT NULL COMMENT '사용자번호' ,
  `downloadCount` INT NOT NULL COMMENT '다운로드수' ,
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부' ,
  `insertDate` DATETIME NOT NULL COMMENT '입력일' ,
  `updateDate` DATETIME NULL COMMENT '삭제일' ,
  PRIMARY KEY (`feedFileId`) ,
  INDEX `feedId_idx` (`feedId` ASC),
  FOREIGN KEY (`feedId`)
  REFERENCES `howling`.`feed` (`feedId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '피드첨부파일';


CREATE  TABLE `howling`.`feed_reply` (
  `replyId` INT NOT NULL AUTO_INCREMENT COMMENT '피드댓글번호' ,
  `feedId` INT NOT NULL ,
  `userId` INT NOT NULL COMMENT '사용자 번호',
  `userNick` VARCHAR(40) NOT NULL COMMENT '사용자닉네임' ,
  `contents` TEXT NOT NULL COMMENT '내용' ,
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부' ,
  `insertDate` DATETIME NOT NULL COMMENT '입력일' ,
  `updateDate` DATETIME NULL COMMENT '삭제일' ,
  PRIMARY KEY (`replyId`) ,
  INDEX `feedreply_feedid_idx` (`feedId` ASC),
  FOREIGN KEY (`feedId`)
  REFERENCES `howling`.`feed` (`feedId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '피드 댓글';



CREATE  TABLE `howling`.`feed_like_user` (
  `feedLikeId` INT NOT NULL AUTO_INCREMENT COMMENT '피드공감번호' ,
  `feedId` INT ,
  `replyId` INT ,
  `replyId` INT ,
  `feedLikeType` VARCHAR(40) NOT NULL COMMENT '공감 타입 (FEED, REPLY)' ,
  `isCanceled` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '취소여부' ,
  `userId` INT NOT NULL COMMENT '사용자 번호',
  `userNick` VARCHAR(40) NOT NULL COMMENT '사용자닉네임' ,
  `insertDate` DATETIME NOT NULL COMMENT '입력일' ,
  `updateDate` DATETIME NULL COMMENT '삭제일' ,
  PRIMARY KEY (`feedLikeId`) ,
  INDEX `feedlikeuser_feedid_idx` (`feedId` ASC),
  INDEX `feedlikeuser_replyid_idx` (`replyId` ASC),
  FOREIGN KEY (`feedId`)
  REFERENCES `howling`.`feed` (`feedId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '피드 댓글';



CREATE  TABLE `howling`.`user` (
  `userId` INT NOT NULL AUTO_INCREMENT COMMENT '사용자번호' ,
  `userEmail` VARCHAR(50) NOT NULL COMMENT '사용자이메일' ,
  `userNick` VARCHAR(40) NOT NULL COMMENT '사용자닉네임' ,
  `userSite` VARCHAR(200) COMMENT '사용자홈페이지' ,
  `userImage` VARCHAR(100) COMMENT '사용자이미지' ,
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '탈퇴여부' ,
  `facebookKey` VARCHAR(200) COMMENT '페이스북연동키' ,
  `googleKey` VARCHAR(200) COMMENT '구글연동키' ,
  `tweeterKey` VARCHAR(200) COMMENT '트위터연동키' ,
  `userPass` VARCHAR(200) NOT NULL COMMENT '비밀번호' ,
  `visiteCount` INT NOT NULL DEFAULT 1 COMMENT '방문카운트',
  `lastVisiteDate` DATETIME NOT NULL COMMENT '방문일' ,
  `insertDate` DATETIME NOT NULL COMMENT '입력일' ,
  `updateDate` DATETIME NULL COMMENT '수정일' ,
  `userPoint` INT NOT NULL DEFAULT 0 COMMENT '포인트',
  `interestKeyword` VARCHAR(50) COMMENT '관심분야' ,
  `isCertification` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '인증여부' ,
  `certificationValue` VARCHAR(50) COMMENT '인증키값' ,
  PRIMARY KEY (`userId`) )
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '사용자정보';

CREATE  TABLE `howling`.`favorite` (
  `favoriteId` INT NOT NULL AUTO_INCREMENT COMMENT '즐겨찾기번호' ,
  `userId` INT NOT NULL COMMENT '사용자번호',
  `favoriteType` VARCHAR(20) NOT NULL COMMENT '즐겨찾기타입(SPACE, WIKI, QA)' ,
  `spaceId` INT NOT NULL COMMENT '공간번호' ,
  `wikiId` INT NOT NULL COMMENT '위키번호' ,
  `qaId` INT NOT NULL COMMENT '질문번호' ,
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부' ,
  `insertDate` DATETIME NOT NULL COMMENT '입력일' ,
  `updateDate` DATETIME NULL COMMENT '수정일' ,
  PRIMARY KEY (`favoriteId`) )
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '즐겨찾기';



CREATE  TABLE `howling`.`user_point_history` (
  `userId` INT NOT NULL COMMENT '사용자 번호',
  `pointType` VARCHAR(20) NOT NULL COMMENT '포인트타입(Wiki글 쓰기, QA답변, QA 추천,  공유갯수, 로그인횟수, Feed쓰기, Feed 답변, Feed 좋아요,즐겨찾기)' ,
  `userPoint` INT NOT NULL COMMENT '포인트' ,
  `insertDate` DATETIME NOT NULL COMMENT '입력일'
)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '사용자포인트내역';





CREATE  TABLE `howling`.`notification_type` (
  `notificationTypeId` INT NOT NULL AUTO_INCREMENT COMMENT '알람정의번호' ,
  `notificationType` VARCHAR(40) NOT NULL COMMENT '알람종류(댓글, 수정, 추가, 답변, 즐겨찾기, 공감, 추천)' ,
  `notificationDesc` VARCHAR(200) NOT NULL COMMENT '알람설명문구' ,
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부' ,
  `insertDate` DATETIME NOT NULL COMMENT '입력일' ,
  PRIMARY KEY (`notificationTypeId`)
)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '알람타입정의정보';





CREATE  TABLE `howling`.`notification` (
  `notificationId` INT NOT NULL AUTO_INCREMENT COMMENT '알람번호' ,
  `notificationTypeId` INT NOT NULL COMMENT '알람타입정의번호' ,
  `userId` INT NOT NULL COMMENT '사용자 번호',
  `notificationDesc` VARCHAR(200) NOT NULL COMMENT '알람설명문구' ,
  `notificationLink` VARCHAR(200) NOT NULL COMMENT '알람링크' ,
  `insertDate` DATETIME NOT NULL COMMENT '입력일' ,
  `confirmDate` DATETIME NOT NULL COMMENT '확인일' ,
  `isConfirmed` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '확인여부' ,
  PRIMARY KEY (`notificationId`) ,
  INDEX `notification_idx` (`notificationTypeId` ASC),
  FOREIGN KEY (`notificationTypeId`)
  REFERENCES `howling`.`notification_type` (`notificationTypeId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '알람정보';




CREATE  TABLE `howling`.`activity_type` (
  `activityTypeId` INT NOT NULL AUTO_INCREMENT COMMENT '활동내역타입번호' ,
  `activityType` VARCHAR(40) NOT NULL COMMENT '활동내역타입종류(수정, 추가,추천)' ,
  `activityDesc` VARCHAR(200) NOT NULL COMMENT '활동내역문구' ,
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부' ,
  `insertDate` DATETIME NOT NULL COMMENT '입력일' ,
  PRIMARY KEY (`activityTypeId`)

)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '활동내역타입정보';



CREATE  TABLE `howling`.`activity` (
  `activityId` INT NOT NULL AUTO_INCREMENT COMMENT '활동내역번호' ,
  `activityTypeId` INT NOT NULL COMMENT '활동내역타입번호' ,
  `userId` INT NOT NULL COMMENT '사용자 번호',
  `activityDesc` VARCHAR(200) NOT NULL COMMENT '활동내역문구' ,
  `activityLink` VARCHAR(200) NOT NULL COMMENT '활동내역링크' ,
  `insertDate` DATETIME NOT NULL COMMENT '입력일' ,
  `confirmDate` DATETIME NOT NULL COMMENT '확인일' ,
  `isConfirmed` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '확인여부' ,
  PRIMARY KEY (`activityId`) ,
  INDEX `activity_idx` (`activityTypeId` ASC),
  FOREIGN KEY (`activityTypeId`)
  REFERENCES `howling`.`activity_type` (`activityTypeId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '활동내역';



CREATE  TABLE `howling`.`qa_contents` (
  `qaId` INT NOT NULL AUTO_INCREMENT COMMENT 'qa번호' ,
  `wikiId` INT COMMENT '위키번호' ,
  `title` VARCHAR(200) NOT NULL COMMENT '제목' ,
  `contents` TEXT NOT NULL COMMENT '내용' ,
  `userId` INT NOT NULL COMMENT '사용자번호',
  `userNick` VARCHAR(40) NOT NULL COMMENT '사용자닉네임' ,
  `viewCount` INT NOT NULL DEFAULT 1 COMMENT '조회수',
  `recommandCount` INT NOT NULL DEFAULT 1 COMMENT '추천수',
  `likeCount` INT NOT NULL DEFAULT 1 COMMENT '좋아요수',
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부' ,
  `isShared` char(1) NOT NULL DEFAULT 'N' COMMENT '공유여부',
  `sharedContentsType` varchar(200) NOT NULL COMMENT '페이스북 컨텐츠타입',
  `sharedResponseId` varchar(200) NOT NULL COMMENT '페이스북 리턴아이디',
  `isReplyed` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '답변여부' ,
  `insertDate` DATETIME NULL COMMENT '입력일 ',
  `updateDate` DATETIME NULL COMMENT '수정일',
  `insertUserId` INT NULL COMMENT '입력자',
  `updateUserId` INT NULL COMMENT '수정자 ',
  PRIMARY KEY (`qaId`) ,
  INDEX `qa_contents_idx` (`qaId` ASC)
)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '소셜qa컨텐츠';



CREATE  TABLE `howling`.`qa_recommand` (
  `qaId` INT NOT NULL AUTO_INCREMENT COMMENT 'qa번호' ,
  `userId` INT NOT NULL COMMENT '사용자번호',
  `userNick` VARCHAR(40) NOT NULL COMMENT '사용자닉네임' ,
  `isCommand` char(1) NOT NULL COMMENT '추천여부 Y:추천, N:비추천',
  `insertDate` DATETIME NULL COMMENT '입력일 ',
  PRIMARY KEY (`qaId`, `userId`),
  INDEX `qa_recommand_idx` (`qaId`, `userId`)
)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = 'qa추천';




CREATE  TABLE `howling`.`keywords` (
  `keywordId` INT NOT NULL AUTO_INCREMENT COMMENT '키워드번호' ,
  `qaId` INT NOT NULL COMMENT 'qa번호',
  `wikiId` INT NOT NULL COMMENT 'wiki번호',
  `spaceId` INT NOT NULL COMMENT '공간번호',
  `keywordName` VARCHAR(40) NOT NULL COMMENT '키워드' ,
  `keywordType` VARCHAR(20) NOT NULL COMMENT '키워드타입' ,
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부' ,
  `insertDate` DATETIME NULL COMMENT '입력일 ',
  `updateDate` DATETIME NULL COMMENT '수정일',
  `insertUserId` INT NULL COMMENT '입력자',
  `updateUserId` INT NULL COMMENT '수정자 ',
  PRIMARY KEY (`keywordId`),
  INDEX `keywords_idx` (`keywordId` asc)
)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '키워드';




CREATE  TABLE `howling`.`qa_reply` (
  `replyId` INT NOT NULL AUTO_INCREMENT COMMENT '답변번호' ,
  `qaId` INT NOT NULL COMMENT 'qa번호',
  `parentsId` INT NOT NULL COMMENT '부모번호',
  `orderIdx` INT NOT NULL COMMENT '정렬순서',
  `depthIdx` INT NOT NULL COMMENT '깊이',
  `title` VARCHAR(200) NOT NULL COMMENT '제목' ,
  `contents` TEXT NOT NULL COMMENT '내용' ,
  `userId` INT NOT NULL COMMENT '사용자번호',
  `userNick` VARCHAR(40) NOT NULL COMMENT '사용자닉네임' ,
  `voteUpCount` INT NOT NULL DEFAULT 0 COMMENT '답변추천수',
  `voteDownCount` INT NOT NULL DEFAULT 0 COMMENT '답변비추천수',
  `isChoiced` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '글쓴이선택여부' ,
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부' ,
  `insertDate` DATETIME NULL COMMENT '입력일 ',
  `updateDate` DATETIME NULL COMMENT '수정일',
  `insertUserId` INT NULL COMMENT '입력자',
  `updateUserId` INT NULL COMMENT '수정자 ',
  PRIMARY KEY (`replyId`),
  INDEX `qa_reply_idx` (`replyId` asc),
  FOREIGN KEY (`qaId`)
  REFERENCES `howling`.`qa_contents` (`qaId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = 'qa답변';



CREATE  TABLE `howling`.`vote` (
  `replyId` INT NOT NULL COMMENT '답변번호' ,
  `userId` INT NOT NULL COMMENT '사용자번호',
  `userNick` VARCHAR(40) NOT NULL COMMENT '사용자닉네임' ,
  `isVote` CHAR(1) NOT NULL DEFAULT 'Y' COMMENT '추천여부 (Y:추천, N:비추천)' ,
  `isCanceled` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '취소여부' ,
  `insertDate` DATETIME NULL COMMENT '입력일 ',
  `updateDate` DATETIME NULL COMMENT '수정일'
)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '댓글선택투표';




CREATE  TABLE `howling`.`keywords_list` (
  `keywordId` INT NOT NULL COMMENT '키워드번호' ,
  `keywordName` VARCHAR(40) NOT NULL COMMENT '키워드' ,
  `keywordType` VARCHAR(20) NOT NULL COMMENT '키워드타입' ,
  `keywordCount` INT NOT NULL DEFAULT 0 COMMENT '키워드누적수',
  `isDeleted` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부' ,
  `insertDate` DATETIME NULL COMMENT '입력일 ',
  `updateDate` DATETIME NULL COMMENT '수정일',
  `insertUserId` INT NULL COMMENT '입력자',
  `updateUserId` INT NULL COMMENT '수정자 '
)
ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT = '키워드목록';

