modules = {

    bootstrapTheme {
        dependsOn 'font-awesome'
        resource url: 'css/bootstrap/theme/bootswatch/cerulean/bootstrap.min.css' // bootstrap theme
    }

    application {
        dependsOn 'bootstrapTheme'
        resource url:'css/style.css'
        resource url:'js/application.js'
    }

}
