//: Playground - noun: a place where people can play

import UIKit

let boroughNames = ["Brooklyn", "Queens", "Manhattan", "The Bronx", "Staten Island"] //five boroughs of NYC
let boroughPopulations = [2621793, 2321580, 1636268, 1438159, 473279] //listed in same order as the names
let landArea = [71, 109, 23, 42, 58]

//Level 1
//Write a function called nycBoroughs that satisfies the following requirements:
//prints:
//NYC - population: 8491079 people
//Brooklyn - population: 2621793 people
//Queens - population: 2321580 people
//Manhattan - population: 1636268 people
//The Bronx - population: 1438159 people
//Staten Island - population: 473279 people











//----------------------------------------------------------------------------------------------------------------------------------
//Level 2
//Write a function called nycBoroughs that satisfies the following requirements:
//i) prints the following message:
//NYC - population: 8491079 people - land area: 303 sq miles
//Brooklyn - population: 2621793 people - land area: 71 sq miles
//Queens - population: 2321580 people - land area: 109 sq miles
//Manhattan - population: 1636268 people - land area: 23 sq miles
//The Bronx - population: 1438159 people - land area: 42 sq miles
//Staten Island - population: 473279 people - land area: 58 sq miles
//
//
//ii) returns six values: averagePopulation, largestBoroughPopulation, smallestBoroughPopulation, averageLandArea, largestBoroughLandArea, smallestBoroughLandArea
//let boroughs = nycBoroughs()
//boroughs.averagePopulation //returns 1698215
//boroughs.largestBoroughPopulation //returns 2621793
//boroughs.smallestBoroughPopulation //returns 473279
//boroughs.averageBoroughLandArea //returns 60.6
//boroughs.largestBoroughLandArea //returns 109
//boroughs.smallestBoroughLandArea //returns 23











//----------------------------------------------------------------------------------------------------------------------------------
//Level 3
//Write a function called nycBoroughs that satisfies the following requirements:
//i) prints the following message:
//NYC - population: 8,491,079 people - land area: 303 sq miles
//Brooklyn - population: 2,621,793 people - land area: 71 sq miles
//Queens - population: 2,321,580 people - land area: 109 sq miles
//Manhattan - population: 1,636,268 people - land area: 23 sq miles
//The Bronx - population: 1,438,159 people - land area: 42 sq miles
//Staten Island - population: 473,279 people - land area: 58 sq miles
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














