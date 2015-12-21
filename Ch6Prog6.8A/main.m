//
//  Prog6.m
//  Ch5
//
//  Created by Joe on 24/11/2015.
//  Copyright © 2015 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

- (void) setAccumulator: (double) value;
- (void) clear;
- (double) getAccumulator;

- (void) add: (double) value;
- (void) subtract: (double) value;
- (void) multiple: (double) value;
- (void) divide: (double) value;

@end

@implementation Calculator
{
    double accumulator;
}

- (void) setAccumulator:(double)value
{
    accumulator = value;
}

- (void) clear
{
    accumulator = 0;
}

- (double) getAccumulator
{
    return accumulator;
}

- (void) add:(double)value
{
    accumulator += value;
}

- (void) subtract:(double)value
{
    accumulator -= value;
}

- (void) multiple:(double)value
{
    accumulator *= value;
}

- (void) divide:(double)value
{
    accumulator /= value;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Calculator *calculator = [[Calculator alloc] init];
        NSLog(@"input a expression: ");
        double value1, value2;
        char operator;
        scanf("%lf %c %lf", &value1, &operator, &value2);
        [calculator setAccumulator:value1];
        
        switch (operator) {
            case '+':
                [calculator add:value2];
                break;
            case '-':
                [calculator subtract:value2];
                break;
            case '*':
                [calculator multiple:value2];
                break;
            case '/':
                [calculator divide:value2];
                break;
            default:
                NSLog(@"unknown expression!");
                break;
        }
        NSLog(@"the expression %.1lf %c %.1lf result is %.2lf", value1, operator, value2
              , [calculator getAccumulator]);
    }
    return 0;
}

