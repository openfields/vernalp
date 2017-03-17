# load raster
raster(x='C:/Users/0411091/Documents/advising/cwitko/test1.tif', band=1) -> t1
raster(x='C:/Users/0411091/Documents/advising/cwitko/test1.tif', band=2) -> t2
raster(x='C:/Users/0411091/Documents/advising/cwitko/test1.tif', band=3) -> t3

# load vector data
vp <- readOGR(dsn='./data', layer='vp3')


extract(t1, vp)
data.frame(vp@data,extract(t1,vp),extract(t2,vp),extract(t3,vp))
                   

brick(x='C:/Users/0411091/Documents/vernalp/data/test2.tif')  -> img
