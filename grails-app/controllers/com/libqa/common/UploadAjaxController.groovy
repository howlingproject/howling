package com.libqa.common

class UploadAjaxController {

    def upload = {
        println params
        fileUploader(params.uploadField)
        render params.name
        return
    }

    def fileUploader(def file){
        Random randomGenerator = new Random()
        int randomInt = randomGenerator.nextInt(1000000)
        def docName = randomInt+file?.getOriginalFilename()
        def contextPath = servletContext.getContextPath()+"/"

        log.debug"Random no: "+randomInt
        log.debug("### servletContext.getContextPath() : " +servletContext.getContextPath())

        def webrootDir = servletContext.getRealPath("/") //app directory
        def imagePath = "user_images/user_id/"
        def filePath = webrootDir + imagePath
        log.debug("### webrootDir : " + webrootDir)

        InputStream is = file?.getInputStream()
        OutputStream os = new FileOutputStream(webrootDir + "user_images/user_id/"+docName)   //file path
        log.debug("Image Size: "+file?.getSize())
        byte[] buffer = new byte[file?.getSize()]
        int bytesRead
        while ((bytesRead = is.read(buffer)) != -1) {
            os.write(buffer, 0, bytesRead)
        }
        is.close()
        os.close()
        log.debug("docName : " + docName)

        render (contentType: "application/json") {
            [
                'success': true,
                'docName': docName,
                'contextPath': contextPath,
                'imagePath': imagePath
            ]
        }
    }
}
