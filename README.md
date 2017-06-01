# globcoverVN 

The `globcoverVN` package contains land use data for Vietnam from the 
[GlobCover](http://due.esrin.esa.int/page_globcover.php) project. It is made of
a `rasterLayer` object that can be loaded with the `getgcvn` function and of the
`SpatialPolygonsDataFrame` `provinces` object that contains, for each province,
the percentage of land cover of each type. Below we describe in detail these
data and their use.

## Installation and loading

You can install `globcoverVN` from [Bitbucket](https://bitbucket.org/choisy/globcovervn) with:

```{r eval = FALSE}
# install.packages("devtools")
devtools::install_bitbucket("choisy/globcoverVN", build_vignettes = TRUE)
```

Once installed, you can load the package:

```{r}
library(globcoverVN)
```


## Usage examples

The raster file can be loaded by the `getgcvn` function:

```{r}
landuse <- getgcvn()
```

The code of the different categories of landuse can be seen with the `legend`
method:

```{r}
show_legend(landuse)
```

The output can also be assigned to an data frame:

```{r}
leg <- show_legend(landuse)
```

And then:

```{r}
str(leg)
```

This raster file can be plotted as follow:

```{r}
colors <- leg$color
plot(landuse, col = colors, legend = FALSE, axes = FALSE)
l <- length(colors)
x <- ceiling(l / 2)
sel1 <- 1:x
sel2 <- (x + 1):l
leg1 <- leg$code[sel1]
leg2 <- leg$code[sel2]
col1 <- colors[sel1]
col2 <- colors[sel2]
legend("left", legend = leg1, fill = col1, bty = "n")
legend("right", legend = leg2, fill = col2, bty = "n")
show_legend(landuse)
```

In addition to this `RasterLayer` resource, the package also provides 
`SpatialPolygonsDataFrame` resources that contains the polygons of the provinces
of Vietnam at different points in time together with the proportions of the
different categories of land use for each province, in the form of attributes.
These `SpatialPolygonsDataFrame` resources can be retrieved thanks to the
`getlanduse` function:

```{r}
prov2008 <- getlanduse(2008)
str(prov2008@data)
```

The variables whose names end with `_pop` correspond to percentages of land
cover when correcting for the local human population density as available from
the `worldpopVN` package. The user interested in seeing how this is computed can
have a look at the `data_creation` script in the `data-raw` folder of the
package sources. This script makes use of the `lusummary` and `lupopsummary`
non-exported functions that are in the `lusummary.R` and `lupopsummary.R` files
in the `R` folder of the package sources. One can verify that the percentages of
land use sum to 1:

```{r}
rowSums(prov2008@data[, 2:21])
rowSums(prov2008@data[, 22:41])
```

You can also check that, for example, in Vietnam, there is no "Permanent snow
and ice":

```{r}
sum(prov2008@data$`220`)
sum(prov2008@data$`220_pop`)
```


This data can be visualize this way as for the example show below for the
"Post-flooding or irrigated croplands (or aquatic)". Let's first make a palette
of colors form `RColorBrewer`:

```{r}
n <- 9
pal <- RColorBrewer::brewer.pal(n, "Blues")
```

Let's find a classes intervals definition:

```{r}
library(classInt)
tmp <- classIntervals(prov2008@data$`11`, n = n, style = "quantile")
plot(tmp, pal = pal, main = NA)
```

Once we're satisfied with the class interval definition we can plot the map:

```{r}
plot(prov2008, col = findColours(tmp, pal))
```

Or, with another definition of the classes intervals:

```{r}
tmp <- classIntervals(prov2008@data$`11`, n = n, style = "jenks")
plot(tmp, pal = pal, main = NA)
plot(prov2008, col = findColours(tmp, pal))
```

The same thing, but with values weighted by the local human population
density:

```{r}
tmp <- classIntervals(prov2008@data$`11_pop`, n = n, style = "jenks")
plot(tmp, pal = pal, main = NA)
plot(prov2008, col = findColours(tmp, pal))
```

As another example, let's see the urban areas:

```{r}
tmp <- classIntervals(prov2008@data$`190_pop`, n = n, style = "jenks")
plot(tmp, pal = pal, main = NA)
plot(prov2008, col = findColours(tmp, pal))
```

Which, again, makes quite some sense (apart maybe for Cao Bang and Hai Phong?).
