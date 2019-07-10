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

#' Energy and fat in chocolate bars
#'
#' The amount of fat (g) and energy (Cal) in 16 chocolate bars.
#' Source is unknown, but we would be happy to give credit if
#' someone tells us.
#'
#'
#' @format A data.frame with 16 rows and 2columns:
#' \describe{
#' \item{energy}{energy, in Calories = kilocalories}
#' \item{fat}{fat content, in grams}
#' }
#' @source Source is unknown, but we would be happy to give credit if
#' someone tells us.
#' @keywords datasets
"chocolate.df"


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

#' Hedgehog growth
#'
#' @format a data.frame with 77 rows and 2 columns:
#' \describe{
#' \item{date}{Date in DD-Month-YYYY format}
#' \item{weight}{weight of the hedgehog, in grams}
#' }
#' @source David Lucy
"hedgehog.growth.df"

#' Age estimation by root dentine translucency
#'
#' @format A data.frame with 71 rows and 3 columns:
#' \describe{
#' \item{age}{Age of subject, in years}
#' \item{sex}{Sex of subject, female or male}
#' \item{rdt}{root dentine translucency}
#' }
"rdt.df"

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
#'   \item{paper}{Paper weight in gsm, either 80 gsm or 50 gsm.}
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
