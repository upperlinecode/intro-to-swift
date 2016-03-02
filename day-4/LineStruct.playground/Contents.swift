//: Playground - noun: a place where people can play

import UIKit

struct Point {
    var x: Double = 0.0
    var y: Double = 0.0
}

//Create a struct called Line with the following characteristics:
//1. Has two properties, endPoint1 and endPoint2, that are both instances of Point
//2. Has a method called length that returns the distance between the two endpoints



struct Line {
    var endPoint1: Point = Point(x: 0.0, y: 0.0)
    var endPoint2: Point = Point(x: 0.0, y: 0.0)
    
    func length()->Double {
        return sqrt(pow((endPoint2.y - endPoint1.y), 2.0) + pow((endPoint2.x - endPoint1.x), 2.0))
    }
}

//var point1 = Point(x: 5.0, y: 0.0)
//var point2 = Point(x: 2.0, y: 4.0)

//var line = Line(endPoint1: point1, endPoint2: point2)

//line.length() // returns 5.0