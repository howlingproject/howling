modules = {

    twBootstrap {
      dependsOn 'font-awesome'
      resource url: 'bootstrap/3.2.0/css/bootstrap.min.css'
      resource url: 'bootstrap/3.2.0/js/bootstrap.min.js'
      resource url: 'bootstrap/theme/bootswatch/cerulean/bootstrap.min.css' // bootstrap theme
    }

    application {
        dependsOn 'twBootstrap'
        resource url:'css/style.css'
        resource url:'js/application.js'
    }

}
