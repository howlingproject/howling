package com.libqa.common

class UploadAjaxController {
    private static String SEPARATOR = "/"

    def upload = {
        println params
        log.debug("params.uploadType =" + params.uploadType)

        fileUploader(params.uploadField, params.uploadType)
        render params.name
        return
    }

    def fileUploader(def file, def viewType) {
        log.debug("####### File Info #######")
        log.debug("viewType : " + viewType)
        log.debug("file.getName() : " + file?.getName())
        log.debug("file.getContentType() : " + file?.getContentType())
        log.debug("file.getOriginalFilename() : " + file?.getOriginalFilename())
        log.debug("file.getSize : " + file?.getSize())
        log.debug("### servletContext.getContextPath() : " +servletContext.getContextPath())

        boolean isAllowed = checkAllowedImageFormat(file?.getContentType(), viewType)
        // 업로드 가능 포맷이 아닐 경우 리턴
        if (!isAllowed) {
            render (contentType: "application/json") {
                [
                    'success': false,
                    'message': '업로드 할 수 없는 파일입니다.',
                    'savedName': savedName,
                    'contextPath': contextPath,
                    'imagePath': imagePath
                ]
            }
        }

        Random randomGenerator = new Random()
        int randomInt = randomGenerator.nextInt(100000000)
        log.debug("randomInt : " + randomInt)
        def savedName = randomInt+file?.getOriginalFilename()
        def contextPath = servletContext.getContextPath() + SEPARATOR

        def webRootDir = servletContext.getRealPath(SEPARATOR) //app directory
        def filePath = "user_images/user_id/"
        def uploadPath = new File(webRootDir + SEPARATOR + filePath)
        log.debug("### webRootDir : " + webRootDir)
        log.debug("### uploadPath : " + uploadPath.getAbsolutePath())

        if(!uploadPath.exists()) {
            uploadPath.mkdirs()
        }

        InputStream is = file?.getInputStream()
        OutputStream os = new FileOutputStream(uploadPath.getAbsolutePath() + SEPARATOR + savedName)   //file path

        byte[] buffer = new byte[file?.getSize()]
        int bytesRead
        while ((bytesRead = is.read(buffer)) != -1) {
            os.write(buffer, 0, bytesRead)
        }
        is.close()
        os.close()
        log.debug("savedName : " + savedName)

        render (contentType: "application/json") {
            [
                'success': true,
                'message': '파일이 업로드 되었습니다.',
                'realName': file?.getOriginalFilename(),
                'savedName': savedName,
                'contextPath': contextPath,
                'fileSize': file?.getSize(),
                'filePath': filePath
            ]
        }
    }

    /**
     * 각 화면별 업로드 가능 포맷을 체크한다.
     * @param fileFormat
     * @param viewType
     * @return
     */
    def boolean checkAllowedImageFormat(def fileFormat, def viewType) {
        def allowedFileFormat = ['image/png', 'image/jpeg', 'image/jpg', 'image/gif']
        log.debug('# fileFormat :' + fileFormat)
        log.debug('# viewType :' + viewType)

        // 공간 생성 혹은 에디터일 경우 이미지만 허용된다.
        if (viewType.equals('Space') || viewType.equals('Editor') || viewType.equals('Feed')){
            if(allowedFileFormat.contains(fileFormat)) {
                return true;
            } else {
                return false;
            }
        }
        return true;
    }
}
