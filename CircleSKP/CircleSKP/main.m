//
//  main.m
//  CircleSKP
//
//  Created by Sumukha on 5/9/15.
//  Copyright (c) 2015 SKP. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Circle.h"

int main(int argc, const char * argv[]) {
    Circle *aCircle = [[Circle alloc] init];

    
    // Use an arbitrary value:
    [aCircle setRadius:4];
    
    NSLog(@"Area: %f", [aCircle getArea]);
    NSLog(@"Circumference = %f",[aCircle getCircumference]);
    NSLog(@"Diameter = %f",[aCircle getDiameter]);
    NSLog(@"Check pi = %f",[aCircle pi]);
    
return 0;
}
