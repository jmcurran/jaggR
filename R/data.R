#' Age estimation from aspartic acid concentration
#'
#' Aspartic acid data for modern upper and lower first pre-molars: taken from
#' Gillard et al 1991
#'
#' @format A data.frame with 37 rows and 3 columns:
#' \describe{
#' \item{age}{Age in years.}
#' \item{period}{Period of tooth, modern or victorian.}
#' \item{aspartic}{Percentage of D-aspartic acid.}
#' }
#'
#' @source Gillard, R.D., Hardman, S.M., Pollard, A.M., Sutton, P.A. and
#' Whittaker, D.K. (1991) 'Determinations of age at death in the archaeological populations
#' using the D/L ratio of aspartic acid in dental collagen' in Archaeometry 90,
#' eds. Pernicka, E. and Wagner, G.A., p.637-644, Birkhauser Verlag, Berlin.
"acid.df"

#' Time taken to sort random vectors of various lengths using bubble sort.
#'
#' Students learning to programme are often taught the bubble sort algorithm for several
#' reasons. Firstly, sorting is a commonly used operation in programming, so having a way
#' of sorting vectors into order is useful. Secondly, it lets the instructor talk about
#' the order of the algorithm, and how it is very inefficient. In computer science,
#' big O notation is used to classify algorithms according to how their run time or space requirements
#' grow as the input size grows. The bubble sort algorithm is known to be O(n^2). That is, the time
#' taken to run the algorithm increases quadratically (with the square) with the size of the vector.
#'
#' @details
#' This data set consists of 200 observations generated using the following code:
#' ```
#' set.seed(123)
#' N = 200
#' bsort.df = data.frame(n = rep(0, N), time = rep(0, N))
#'
#' n = sample(100:1000, size = N, replace = TRUE)
#'
#' pb = txtProgressBar(0, N, style = 3)
#'
#' for(i in 1:N){
#'   x = rnorm(n[i])
#'   bsort.df$n[i] = n[i]
#'   bsort.df$time[i] = system.time(bubbleSort(x))[1]
#'   setTxtProgressBar(pb, i)
#' }
#' close(pb)
#' ```
#' It consists of the times taken to sort 200 vectors of random length between 100 and 1,000.
#' The vectors themselves are random samples of size n[i] from the standard normal distribution.
#'
#' @format A data.frame with 200 rows and 2 columns:
#' \describe{
#' \item{n}{Size of the random vector.}
#' \item{time}{Time in seconds taken to sort the vector using \code{bubbleSort}.}
#' }
#'
#' @seealso \code{\link{bubbleSort}}
"bsort.df"


#' Energy requirements for different activities
#'
#' An experiment was conducted to compare the energy requirements of three
#' physical activities: running, walking and bicycle riding. Eight subjects were
#' asked to run, walk and bicycle a measured distance, and the number of
#' kilocalories expended per kilometre was measured for each subject during
#' each activity. The activities are run in random order with time for recovery
#' between activities. Each activity was monitored exactly once for each
#' individual.
#'
#' @format A data.frame with 24 rows and 3 columns:
#' \describe{
#' \item{subject}{a subject ID.}
#' \item{activity}{running, walking, riding.}
#' \item{energy}{energy expended during activity, in kilocalories (Cal)}
#' }
#'
#' @source Milton, J. S. (1992). Statistical Methods in the Biological and Health Sciences
#' 2nd Edition, McGraw-Hill, New York, p. 316--319.
"activity.df"

#' Calculus marks
#'
#' Calculus marks from the 2012 first year calculus course from the
#' Department of Mathematics and Statistics at Lancaster
#' University.
#'
#' @format  A data.frame with 147 rows and two columns:
#' \describe{
#' \item{coursework}{final coursework mark out of 100.}
#' \item{examination}{final examination mark out of 100.}
#' }
#'
#' @source George Moran, Department of Mathematics and Statistics at Lancaster.
"calculus.df"

#' Carbon isotopes in trees
#'
#' These observations were made by Robertson et. al.
#' They are the mean delta 13 C compositions of several
#' individual trees from two locations in Central England
#' mean temperatures from the CET are also given
#'
#' @format A data.frame with 200 rows and 4 columns:
#' \describe{
#'   \item{year}{}
#'   \item{iso}{}
#'   \item{temp}{}
#' }
"carbon.df"

#' Car listings from trademe
#'
#' This data set consists of 3,618 listings scraped from the New Zealand website \href{http://trademe.co.nz}{tradee}.
#' trademe is similar to \href{ebay.com}{ebay} in that is an online auction site which allows sellers to list new
#' and used goods for sale. Goods may be purchased via auction, or outright if the seller has enabled that option. Many
#' New Zealanders, including commericial car dealers, use the website to buy and sell cars. The listings gathered consist
#' are mostly for Mazda 3 and Toyota Corolla vehicles, along with imported vehicles which may be the same car, but with
#' different badging.
#'
#'  @format A data.frame with 3,618 rows and 14 columns:
#'  \describe{
#'  \item{obs}{The observation number, from 1 to 3618.}
#'  \item{title}{The listing title - basically the make and model of the car.}
#'  \item{year}{The year of manufacture of the vehicle.}
#'  \item{age}{The age of the vehicle as of 2013 (when this data was collected). So a car manufactured in 2009 would have an
#'  age of 4, for example.}
#'  \item{price}{The asking price, in NZD.}
#'  \item{km}{The number of kilometres on the odometer---i.e. the "mileage."}
#'  \item{cc}{The displacement of the engine in cubic centimetres.}
#'  \item{fuel}{The fuel used by  the vehicle: either Petrol (gasoline) or Diesel.}
#'  \item{doors}{The number of doors in the car. Note 3 and 5 door cars are hatchbacks.}
#'  \item{list.color}{The colour of the car given in the listing.}
#'  \item{simple.color}{An attempt to standardise the colour to a reduced category. For example sky blue, and light blue would
#'  both get transformed to blue.}
#'  \item{make}{The manufacturer of the car: either Mazda or Toyota}
#'  }
"car.prices.df"

#' Cell survival data
#'
#' The data comes from an experiment to measure the mortality of cancer cells
#' under radiation under taken in the Department of Radiology, University of Cape
#' Town. Four hundred cells were placed on a dish, and three dishes were
#' irradiated at a time, or occasion. After the cells were irradiated, the
#' surviving cells were counted. Since cells would also die naturally, dishes
#' with cells were put into the radiation chamber without being irradiated, to
#' establish the natural mortality. These data gives only these zero-dose data.
#' these data are from ozDASL
"cell_surv.df"

#' Energy and fat in chocolate bars
#'
#' The amount of fat (g) and energy (Cal) in 16 chocolate bars.
#' Source is unknown, but we would be happy to give credit if
#' someone tells us.
#'
#' @format A data.frame with 16 rows and 2 columns:
#' \describe{
#' \item{energy}{energy, in Calories = kilocalories}
#' \item{fat}{fat content, in grams}
#' }
#' @source Source is unknown, but we would be happy to give credit if
#' someone tells us.
#' @keywords datasets
"chocolate.df"

#' Age estimation based on changes in dental characteristics
#'
#' @format a data.frame with 759 rows and 10 columns:
#' \describe{
#' \item{sex}{sex of subject, female or male.}
#' \item{age}{age, in years.}
#' \item{quadrant}{location in mouth of tooth}
#' \item{tooth}{tooth identifier}
#' \item{attrition}{}
#' \item{recession}{}
#' \item{dentine}{qualitative assessment of remaining dentine}
#' }
"gustafson.df"

#' Impact strength of insulation cuts in foot-pounds.
#'
#' @format a data.frame with 100 rows and 3 colums:
#' \describe{
#'	\item{Lot}{Lot of insulating material}
#'	\item{Cut}{Lengthwise (Length) or crosswise (Cross)}
#'	\item{Strength}{Impact strength, in foot-pounds (ft-lb)}
#' }
#'@source Ostle, B. (1963). Statistics in Research: Basic Concepts and Techniques for Research.
#'Ames, Iowa. Iowa State University Press.
"insulation.df"

#' Michelson's speed of light data
#'
#' @format a data.frame with 43 rows and 2 columns:
#' \describe{
#' \item{speed}{The scaled speed of light measured in a single experiment. The
#' scaling is the measurement minus 299,000 km/s. E.g. the first entry in the
#' data.frame is 850, which is 299,850 km/s.}
#' \item{year}{The year in which the experiment was conducted, either 1879 or 1882.}
#' }
#' @source Stigler, S. M. (1977), "Do robust estimators work with real data?",
#' The Annals of Statistics 5:1055-1098.
"lightspeed.df"

#' Hedgehog growth
#'
#' @format a data.frame with 77 rows and 2 columns:
#' \describe{
#' \item{date}{Date in DD-Month-YYYY format}
#' \item{weight}{weight of the hedgehog, in grams}
#' }
#' @source David Lucy
"hedgehog.growth.df"

#' from the Commission facility in Hanford, Washington. One of the major safety
#' problems encountered there has been the storage of radioactive wastes. Over
#' the years, significant quantities of these substances - including strontium
#' 90 and cesium 137 - have leaked from their open-pit storage areas into the
#' nearby Columbia River, which flows along the Washington-Oregon border, and
#' eventually empties into the Pacific Ocean.
#'
#' To measure the health consequences of this contamination, an index of
#' exposure was calculated for each of the nine Oregon counties having frontage
#' on either the Columbia River or the Pacific Ocean. This particular index was
#' based on several factors, including the county's stream distance from
#' Hanford and the average distance of its population from any water frontage.
#' As a covariate, the cancer mortality rate was determined for each of these
#' same counties.
#' The data give the index of exposure and the cancer mortality rate during
#' 1959-1964 for the nine Oregon counties affected. Higher index values
#' represent higher levels of contamination.
#'
#' @source Fadeley, R. C. (1965). Oregon malignancy pattern physiographically
#' related to Hanford, Washington, Radioisotope Storage. Journal of
#' Environmental Health 27, 883-897.
"radiation.df"

#' Mortality rates for different species
#'
#' Ecologists Michael McCoy and James Gillooly were interested in predicting
#' mortality rates for different species based on a number of variables including
#' body mass, temperature. In their paper (McCoy and Gillooly, 2008) they explore
#' the hypothesis that the natural logarithm of temperature‐corrected mortality rate
#' should be a linear function of the natural logarithm of body mass. The
#' temperature-corrected mortality rate is based upon previous work which draws
#' on results from biology, biochemistry, and thermodynamics. Users are encouraged
#' to read the original source for a deeper explanation.
#'
#' @format a data.frame with 2117 rows and 4 columns:
#' \describe{
#' \item{group}{a factor indicating which one of the six taxonimic groups the observation
#' belongs to: bird, fish, invertebrate, mammal, multicellular plant, and phytoplankton.}
#' \item{species}{the species of the observation.}
#' \item{mass}{the body mass in grams (g).}
#' \item{mortality}{the mortality rate.}
#' \item{temp}{the average body temperature in degrees Celcius.}
#' \item{E}{average activation energy of heterotrophic respiration in animals (0.65 eV)
#' or photosynthesis in plants (0.32 eV).}
#' \item{mort.corrected}{mortality corrected by a Boltzmann-Arrhenius factor, specifically, divided by exp(-E/k * (1 / T - 1 / T20)),
#' where k is Boltzmann constant 8.62 x 10^-5, T20 is 20 degrees Celcius in degrees Kelvin, i.e. 293, and T is average
#' body temperature \code{temp} in degrees Kelvin.}
#' }
#'
#' @source McCoy, M.W. and Gillooly, J.F. (2008), Predicting natural mortality
#' rates of plants and animals. Ecology Letters, 11: 710-716.
#' \href{https://doi-org.ezproxy.auckland.ac.nz/10.1111/j.1461-0248.2008.01190.x}{https://doi-org.ezproxy.auckland.ac.nz/10.1111/j.1461-0248.2008.01190.x}
"mortality.df"

#' Age estimation by root dentine translucency
#'
#' Root dentine translucency is, in humans, an age related physiological
#' feature. In the dentine of teeth in adult humans the
#' tubecular microstructures fill with a highly crystalline substance making
#' them become nearly invisible when looked at in normal light. This process
#' starts from the apical foramen in early adulthood, and progresses up the
#' tooth into advanced old age. Solheim (Lucy et al., 1996) collected data
#' on age, root dentine translucency for 71 maxillary second incisors from a
#' Norweigian population. The sex of each individual was also noted.
#'
#' @format A data.frame with 71 rows and 3 columns:
#' \describe{
#' \item{age}{Age of subject, in years}
#' \item{sex}{Sex of subject, female or male}
#' \item{rdt}{root dentine translucency}
#' }
#'
#' @source Lucy, D., Aykroyd, R.G., Pollard, A.M. and Solheim (1996), T.,"A
#' Bayesian approach to adult human age estimation from dental observations
#' by Johanson's age changes", Journal of Forensic Sciences 41(2):189-194.
"rdt.df"

#' Shotgun range data
#' In order to test the validity of range-of-fire estimates obtained by
#' the application of regression analysis to shotgun pellet patterns, a
#' blind study was conducted in which questioned pellet patterns were
#' fired at randomly selected ranges between 3.0 and 15.2 m (10 and 50 ft)
#' with two different 12-gauge shotguns. each firing a different type
#' of buckshot cartridge. Test firings at known ranges were also
#' conducted with the same weapons and ammunition.
#'
#' @format  A data frame with 70 observations on 4 variables.
#' \describe{
#' \item{range}{The range in feet of the firing.}
#' \item{gun}{The model of shotgun used in the experiment.}
#' \item{expt}{A factor recording whether the data was to be used for building/training the model, or testing it.}
#' \item{area}{The area of the smallest rectangle that would enclose the pellet pattern.}
#'  }
#'
#' @source Rowe, W.F. and Hanson, S.R. (1985) Range-of-fire estimates from regression
#' analysis applied to the spreads of shotgun pellet patterns: Results of a blind study,
#' Forensic Science International, 28(3-4): 239-250.
#' @keywords datasets
"shotgun.df"

#'

#' Does insulation make a difference?
#'
#' This data arose from an experiment conducted by David
#' to testing the insulation of the ground floor bedroom
#' of his house--The Spinney. The idea was that the better the insulation
#' the slower the rate cooling, so for some exponential model
#' y(t) = y(0) exp(-lambda t) - the value of lambda should go down
#' for a better insulated room
#
#' In the experiment, David ran two extension cords into the room
#' through a service port to power two electric heaters and a fan.
#' He then sealed up the room by shutting windows and door. The
#' heaters were left to heat up the room as much as they could. This
#' happened to be about 24.6 C. He then turned the heaters and fan off
#' and the recorded the rate of cooling by observing a temperture probe
#' from outside the room for about two hours.
#
#' Standard theory says that the rate of cooling is proportional to
#' the temperature differential between the indoor and outdoor temperatures.
#' To control for this days were selected which had approximately the
#' same external temperatures. The room has walls which are external and
#' internal. It was assumed that the outside and internal house (no heating)
#' had reached an equilibrium so that we only need to know the outside room,
#' but inside house temperature rather than both
#
#' @format A data.frame with 47 rows and 3 columns:
#' \describe{
#' \item{time}{The time since turning off the heaters and fan}
#' \item{uninsulated}{The recorded temperature with absolutely no insulation
#'  in the room whatsoever---outside temperature 8.0 C.}
#' \item{insulated}{The recorded temperature with part of a wall and the floor insulated---
#' outside temperature 8.1 C}
#' }
#' @source David Lucy
"cooling.df"

#' Hedgehog survival
#'
#' The Bunnell Index (or BI) is a measurement of how tightly the hedgehog are
#' curled into a ball. One measurement is taken round the middle of the animal
#' to cross at the point where the nose ends ("A," latitudinal circumference).
#' The other measurement, using a second tape measure already secured underneath
#' the animal, is taken round the hedgehog from head to tail ("B," longitudinal
#' circumference). Care must be taken with both measurements to ensure that the
#' ends of the tape measure meet easily without altering the shape/positioning
#' of the hedgehog. When obtaining measurement A, the positioning of the tape
#' measure is crucial; a measurement taken lower down toward the tail can result
#' in a lower (inaccurate) reading. Repeatedly measuring many hedgehogs over
#' several consecutive days demonstrated consistent BI values and hence the
#' reliability of the method. A is divided by B to give a value for the BI. It
#' is important to determine the BI value to two decimal places (i.e., a value
#' of 0.794, becomes 0.79, while a value of 0.805 becomes 0.81).
#'
#' @format A data.frame with 31 observations and 2 columns:
#' \describe{
#' \item{BI}{The Bunnell Index (BI) of the hedgehog at the time of admission.}
#' \item{survived}{A logical variable recording whether the hedgehog survived or died.}
#' }
#'
#' @source Bunnell, T. (2002) The Assessment of British Hedgehog (Erinaceus europaeus)
#' Casualties on Arrival and Determination of Optimum Release Weights Using a New
#' IndexJournal of Wildlife Rehabilitation 25 (4):11-21
"hedgehog.survival.df"

#' Times taken for a rat to navigate through a maze
#'
#' @format A data.frame with 135 rows and 4 columns:
#' \describe{
#' \item{subject}{An ID for each rat}
#' \item{treatment}{The treatment adminstered to the subject: control/none, thouiracil, thyroxin.}
#' \item{test}{A maze number.}
#' \item{time}{time, in seconds taken for the rat to navigate the maze.}
#' }
"ratmaze.df"

#' Distance travelled by paper planes
#'
#' A group from Queensland University of Technology conducted an experiment
#' where they recorded the distance flown by paper aeroplanes. The experimenters
#' used a sealed corridor at the University, and controlled the design of the
#' aeroplane, the weight of the paper from which each aeroplace was constructed,
#' and the angle of incidence at launch for each paper plane. The data and
#' further notes for this experiment can be found at
#' http://www.statsci.org/data/oz/planes.html.
#'
#' @format A data.frame with 16 rows and 5 columns:
#' \describe{
#'   \item{distance}{Distance travelled in mm.}
#'   \item{paper}{Paper weight in grams per square metre (gsm), either 80 gsm or 50 gsm.}
#'   \item{angle}{Angle of launch, horizontal or 45 degrees.}
#'   \item{design}{Design of the plane, either high performance or simple.}
#' }
#'
#' @source Mackisack, M. S. (1994). What is the use of experiments conducted by
#' statistics students? Journal of Statistics Education, 2, no 1.
"plane.df"

#' Simulated weights of difference breeds of terriers
#'
#' Simulated samples of weights from English terrier breeds
#' with the parameter values for the means for the simulation
#' taken from http://www.dogsindepth.com. The variances are
#' assumed to be constant.
#'
#' @format A data.frame with 30 rows and 2 columns.
#' \describe{
#' \item{weight}{Weight of dog in kg.}
#' \item{breed}{Breed, either Skye, Manchester or Norwich.}
#' }
"terriers.df"
