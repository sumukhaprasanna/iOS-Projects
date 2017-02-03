//
//  ViewController.h
//  CircleSKP
//
//  Created by Sumukha on 5/9/15.
//  Copyright (c) 2015 SKP. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Circle : NSObject
{
    double radius;
    double pi;
}

@property double radius, pi;

-(double) getArea;
-(double) getDiameter;
-(double) getCircumference;

@end
