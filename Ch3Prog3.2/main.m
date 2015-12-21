//
//  main.m
//  Ch3Prog3.2
//
//  Created by Joe on 23/11/2015.
//  Copyright © 2015 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
-(void) print;
-(void) setNumberator: (int) n;
-(void) setDenominator: (int) n;
@end

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumberator:(int) n
{
    numerator = n;
}

-(void) setDenominator:(int)n
{
    denominator = n;
}

-(int) getNumerator
{
    return numerator;
}

-(int) getDenominator
{
    return denominator;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Fraction *myFraction;
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        [myFraction setNumberator:3];
        [myFraction setDenominator:5];
        NSLog(@"The value of myFraction is: ");
        [myFraction print];
        NSLog(@"myFranction's numberator is %i", [myFraction getNumerator]);
        NSLog(@"myFraction's denominator is %i", [myFraction getDenominator]);
    }
    return 0;
}
