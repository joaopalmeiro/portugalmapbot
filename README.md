# portugalmapbot

> [Twitter](https://twitter.com/portugalmapbot)

A Twitter bot 🤖🐦 that shares random satellite images from Portugal 🛰️🇵🇹. Adapted from the [londonmapbot](https://github.com/matt-dray/londonmapbot) Twitter bot created by [Matt Dray](https://www.matt-dray.com/). Spatial data obtained via [GADM](https://gadm.org/).

## References

- [londonmapbot](https://github.com/matt-dray/londonmapbot) by [Matt Dray](https://twitter.com/mattdray).
- [chicagomapbot](https://github.com/leotorres114/chicagomapbot) by [Leo Torres](https://github.com/leotorres114).
- [esmapbot](https://github.com/roberer/esmapbot) by [Rober J](https://twitter.com/roberer_).
- Spatial data from Portugal by [GADM](https://gadm.org/) ([Wikipedia page](https://en.wikipedia.org/wiki/GADM)).

## Image credits

Posted images are copyright of Mapbox/OpenStreetMap/Maxar. This information is embedded in every image.

## Development

> R version 3.6.3

- `options(styler.save_after_styling = TRUE)`.

## Notes

- `install.packages("rtweet", dependencies = TRUE)`.
- `install.packages("sf", dependencies = TRUE)`.
- {[groundhog](https://groundhogr.com/)} package:
  - Alternative to {[renv](https://rstudio.github.io/renv/articles/renv.html)}.
  - `install.packages("groundhog")`.
  - [`groundhog.library`](https://www.rdocumentation.org/packages/groundhog/versions/1.5.0/topics/groundhog.library) documentation.
  - [Repo](https://github.com/CredibilityLab/groundhog).
- [setup-r](https://github.com/r-lib/actions/tree/v2-branch/setup-r) repo.
- `rstudioapi::versionInfo()`.
- Header: `https://api.mapbox.com/styles/v1/mapbox/satellite-v9/static/-6.7212,41.62,4,0/1280x500@2x?access_token=`.
- [Twitter sizes](https://www.canva.com/sizes/twitter/).
