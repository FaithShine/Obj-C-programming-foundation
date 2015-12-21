//
//  Prog5.m
//  Ch5
//
//  Created by Joe on 24/11/2015.
//  Copyright © 2015 Joe. All rights reserved.
//


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int number, rightDigit;
        NSLog(@"input number: ");
        scanf("%i", &number);
        while (number != 0) {
            rightDigit = number % 10;
            NSLog(@"%i right digit is %i", number, rightDigit);
            number /= 10;
        }
    }
    return 0;
}
