//: Playground - noun: a place where people can play

import UIKit

let boroughNames = ["Brooklyn", "Queens", "Manhattan", "The Bronx", "Staten Island"] //five boroughs of NYC
let boroughPopulations = [2621793, 2321580, 1636268, 1438159, 473279] //listed in same order as the names
let landArea = [71, 109, 23, 42, 58]

//Level 1
//Write a function called nycBoroughs that satisfies the following requirements:
//i) it prints the following string:
//
//NYC - population: 8491079 people
//Brooklyn - population: 2621793 people
//Queens - population: 2321580 people
//Manhattan - population: 1636268 people
//The Bronx - population: 1438159 people
//Staten Island - population: 473279 people

func nycBoroughs(boroughNames: [String], boroughPopulations: [Int]) {
    
}








//----------------------------------------------------------------------------------------------------------------------------------
//Level 2
//Write a function called nycBoroughsWithPopulationDensity that satisfies the following requirements:
//population density has the units people/(sq mile)
//i) it prints the following string:

//NYC - population: 8491079 people - land area: 303 sq miles - population density: 28023
//Brooklyn - population: 2621793 people - land area: 71 sq miles - population density: 36926
//Queens - population: 2321580 people - land area: 109 sq miles - population density: 21298
//Manhattan - population: 1636268 people - land area: 23 sq miles - population density: 71142
//The Bronx - population: 1438159 people - land area: 42 sq miles - population density: 34241
//Staten Island - population: 473279 people - land area: 58 sq miles - population density: 8159


func nycBoroughsWithPopulationDensity(boroughNames: [String], boroughPopulations: [Int], landArea: [Int]) {
    
}





//----------------------------------------------------------------------------------------------------------------------------------
//Level 3
//Write a function called nycBoroughsWithReturn that satisfies the following requirements:
//i) it prints the following string:

//NYC - population: 8491079 people - land area: 303 sq miles - population density: 28023
//Brooklyn - population: 2621793 people - land area: 71 sq miles - population density: 36926
//Queens - population: 2321580 people - land area: 109 sq miles - population density: 21298
//Manhattan - population: 1636268 people - land area: 23 sq miles - population density: 71142
//The Bronx - population: 1438159 people - land area: 42 sq miles - population density: 34241
//Staten Island - population: 473279 people - land area: 58 sq miles - population density: 8159
//
//
//ii) returns six values: averagePopulation, largestBoroughPopulation, smallestBoroughPopulation, averageLandArea, largestBoroughLandArea, smallestBoroughLandArea
//
//let boroughs = nycBoroughs()
//boroughs.averagePopulation //returns 1698215
//boroughs.largestBoroughPopulation //returns 2621793
//boroughs.smallestBoroughPopulation //returns 473279
//boroughs.averageBoroughLandArea //returns 60.6
//boroughs.largestBoroughLandArea //returns 109
//boroughs.smallestBoroughLandArea //returns 23



//func nycBoroughsWithReturn(boroughNames: [String], boroughPopulations: [Int], landArea: [Int])->(averagePopulation: Int, largestBoroughPopulation: Int, smallestBoroughPopulation: Int, averageBoroughLandArea: Double, largestBoroughLandArea: Int, smallestBoroughLandArea: Int) {
//    
//}








//----------------------------------------------------------------------------------------------------------------------------------
//Level 3
//Write a function called nycBoroughsAdvanced that satisfies the following requirements:
//i) prints the following message:
//
//NYC - population: 8491079 people - land area: 303 sq miles - population density: 28023
//Brooklyn - population: 2621793 people - land area: 71 sq miles - population density: 36926
//Queens - population: 2321580 people - land area: 109 sq miles - population density: 21298
//Manhattan - population: 1636268 people - land area: 23 sq miles - population density: 71142
//The Bronx - population: 1438159 people - land area: 42 sq miles - population density: 34241
//Staten Island - population: 473279 people - land area: 58 sq miles - population density: 8159
//
//
//ii) returns three values: averagePopulation, largestBoroughPopulation, and smallestBoroughPopulation
//let boroughs = nycBoroughs()
//boroughs.averagePopulation //returns 1698215
//boroughs.largestBoroughPopulation //returns 2621793
//boroughs.smallestBoroughPopulation //returns 473279
//boroughs.averageBoroughLandArea //returns 60.6
//boroughs.largestBoroughLandArea //returns 109
//boroughs.smallestBoroughLandArea //returns 23
//
//
//iii) has a parameter called printAbbreviatedData with a default value of false. When printAbbreviatedData is passed in as true, only print this message:
//NYC
//5 boroughs: Brooklyn, Queens, Manhattan, The Bronx, and Staten Island
//Total population: 8491079 people - Total land area: 303 sq miles
//Average population per borough: 1698215 people
//Average land area per borough: 60.6 sq miles



//func nycBoroughsAdvanced(boroughNames: [String], boroughPopulations: [Int], landArea: [Int])->(averagePopulation: Int, largestBoroughPopulation: Int, smallestBoroughPopulation: Int, averageBoroughLandArea: Double, largestBoroughLandArea: Int, smallestBoroughLandArea: Int) {
//    
//}









