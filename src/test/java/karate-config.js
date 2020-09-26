function() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev';
    }
    var config = {
        urlBase: "http://localhost:8080"
    }

    if (env == 'hm') {
        config.urlBase = "http://site.aws.com"
    }

  return config;
}