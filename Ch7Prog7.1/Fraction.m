//
//  Fraction.m
//  ProgrammingObjC
//
//  Created by Joe on 27/11/2015.
//  Copyright © 2015 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction

@synthesize
    numerator, denominator;

- (void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

- (double) convertToNum
{
    if (denominator != 0)
    {
        return (double) numerator / denominator;
    }
    else
        return NAN;
}

- (NSString *) convertToString
{
    return [NSString stringWithFormat: @"%i/%i", numerator, denominator];
}

- (int) countAddition
{
    static int countAddition = 0;
    return ++countAddition;
}

- (NSString *) convertToString: (bool) beReduced
{
    if (beReduced) {
        return [NSString stringWithFormat:@"%i/%i", numerator, denominator];
    }
    else {
        Fraction *f = [[Fraction alloc] init];
        f.numerator = numerator;
        f.denominator = denominator;
        [Fraction reduce:f];
        return [NSString stringWithFormat:@"%i/%i", f.numerator, f.denominator];
    }
}

//最大公约数
+ (int) greatestCommonDivisor: (int)value1 and: (int)value2
{
    int greatestCommonDivisor = 0;
    int temp;
    do
    {
        temp = value1 % value2;
        value1 = value2;
        value2 = temp;
    }while (temp != 0);
        
    return greatestCommonDivisor = value1;
}
//最大公倍数
+ (int) leastCommonMultiple: (int) value1 and: (int) value2
{
    int lowestCommonMultiple = 0;
    
    return lowestCommonMultiple = value1 * value2 / [Fraction greatestCommonDivisor:value1 and:value2];
}

- (void) set: (int) n : (int) d
{
    NSLog(@"test methods without arguments name");
}

- (Fraction *) add: (Fraction *) f
{
    int temp = denominator;
//    NSLog(@"%@", [self convertToString]);
//    NSLog(@"%i", temp);
    Fraction *result = [[Fraction alloc] init];
    result.denominator = [Fraction leastCommonMultiple:denominator and:f.denominator];
//    NSLog(@"%i", result.denominator);
    result.numerator = numerator * result.denominator / temp + f.numerator * result.denominator / f.denominator;
//    NSLog(@"%i", [self countAddition]);
    return result;
}

- (Fraction *) subtract:(Fraction *)f
{
    int temp = denominator;
    Fraction *result = [[Fraction alloc] init];
    result.denominator = [Fraction leastCommonMultiple:denominator and:f.denominator];
    result.numerator = numerator * denominator / temp - f.numerator * denominator / f.denominator;
    return result;
}

- (Fraction *) multiple:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.denominator = denominator * f.denominator;
    result.numerator = numerator * f.numerator;
//    NSLog(@"result is %@", [result convertToString]);
    [Fraction reduce:result];
    return result;
}

- (Fraction *) divide:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    [Fraction reduce:result];
    return result;
}

+ (void) reduce: (Fraction *) f
{
    int lcd = [Fraction greatestCommonDivisor: f.numerator and: f.denominator];
//    NSLog(@"%i", lcd);
    f.numerator /= lcd;
    f.denominator /= lcd;
}

- (Fraction *) testPointerAddress
{
    Fraction *temp = [[Fraction alloc] init];
    NSLog(@"temp address is %p", temp);
    return temp;
}

@end