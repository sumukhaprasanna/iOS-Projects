//
//  main.m
//  DaysShow
//
//  Created by Sumukha on 5/10/15.
//  Copyright (c) 2015 SKP. All rights reserved.
//
#import <Foundation/Foundation.h>
// print the number of days in a month
int main (int argc, char * argv[])
{
    @autoreleasepool {
        enum month { january = 1, february = 2, march = 3, april = 4, may = 5, june = 6,
            july = 7, august = 8, september = 9, october = 10, november = 11,
            december = 12 }; enum month amonth;
        int days;
        NSLog (@"Enter month number: "); scanf ("%i", &amonth);
        switch (amonth) { case january: case march: case may:
            case july: case august: case october: case december:
                days = 31;
                break;
            case april:
            case june:
            case september: case november:
                days = 30;
                break; case february:
                days = 28;
                break;
            default:
                NSLog (@"bad month number"); days = 0;
                break;
        }
        if ( days != 0 )
            NSLog (@"Number of days is %i", days);
        if ( amonth == february )
            NSLog (@"...or 29 if it's a leap year");
    }
    return 0; }