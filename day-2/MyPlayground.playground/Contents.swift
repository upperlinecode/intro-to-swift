//: Playground - noun: a place where people can play

import UIKit
import Darwin

struct Point {
    var x: Double = 0.0, y: Double = 0.0
}

var point1 = Point(x: 5.0, y: 0.0)

var point2 = Point(x: 2.0, y: 4.0)


struct Line {
    var endPoint1: Point = Point(x: 0.0, y: 0.0)
    var endPoint2: Point = Point(x: 0.0, y: 0.0)
    
    func length()->Double {
        return sqrt(pow((endPoint2.y - endPoint1.y), 2.0) + pow((endPoint2.x - endPoint1.x), 2.0))
    }
}


var line = Line(endPoint1: point1, endPoint2: point2)

line.length()