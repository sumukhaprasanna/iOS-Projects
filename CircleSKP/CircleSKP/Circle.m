//
//  ViewController.m
//  CircleSKP
//
//  Created by Sumukha on 5/9/15.
//  Copyright (c) 2015 SKP. All rights reserved.
//

#import "Circle.h"


@implementation Circle

@synthesize radius, pi;

//Initialize with const pi:
- (id)init {
    self = [super init];
    if (self) {
        pi = 3.14159;
        NSLog(@"Circle created.");
    }
    return self;
}

-(double) getArea {
    return pi*radius*radius;
}

-(double) getDiameter {
    return 2*radius;
}

-(double) getCircumference {
    return 2*pi*radius;
}

@end