.onLoad <-
    function(libpath, pkgname)
{
    arango_auth <<- memoise::memoise(
        arango_auth,
        ## FIXME: I don't know the lifespan of the JWT token
        cache = cachem::cache_mem(max_age = 60 * 60)
    )
    arango_collections <<- memoise::memoise(arango_collections)
}        
