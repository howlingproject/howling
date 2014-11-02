dataSource {
    pooled = true
//    dbCreate = "update"
    driverClassName = "com.mysql.jdbc.Driver"
    //url = "jdbc:mysql://14.63.225.165:3306/howling"
    username = "howlingproject"
    password = "howlingproject2014"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://14.63.225.165:3306/howling"
        }
    }
//    test {
//        dataSource {
//            dbCreate = "update"
//            url = "jdbc:mysql://14.63.225.165:3306/howling"
//        }
//    }
//    production {
//        dataSource {
//            dbCreate = "update"
//            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
//            properties {
//               maxActive = -1
//               minEvictableIdleTimeMillis=1800000
//               timeBetweenEvictionRunsMillis=1800000
//               numTestsPerEvictionRun=3
//               testOnBorrow=true
//               testWhileIdle=true
//               testOnReturn=false
//               validationQuery="SELECT 1"
//               jdbcInterceptors="ConnectionState"
//            }
//        }
//    }
}
