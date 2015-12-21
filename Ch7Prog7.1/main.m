//
//  main.m
//  Ch7Prog7.1
//
//  Created by Joe on 27/11/2015.
//  Copyright © 2015 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Fraction *fraction = [[Fraction alloc] init];

//        scanf("%i %i", fraction.numerator, fraction.denominator);
        fraction.numerator = 1;
        fraction.denominator = 3;
        NSLog(@"expression %i/%i is %.2lf", fraction.numerator, fraction.denominator, [fraction convertToNum]);
        NSLog(@"the Greatest Common Divisor is: %i", [Fraction greatestCommonDivisor:64 and:40]);
        
        Fraction *f2 = [[Fraction alloc] init];
        f2.numerator = 2;
        f2.denominator = 5;
        
        Fraction *f3 = [[Fraction alloc] init];
        f3.numerator = 1;
        f3.denominator = 4;
        NSLog(@"%@ add %@ is: %@", [f2 convertToString], [f3 convertToString], [[f2 add:f3] convertToString]);
        
        Fraction *f4 = [[Fraction alloc] init];
        f4.numerator = 3;
        f4.denominator = 5;
        NSLog(@"%@ add %@ is: %@", [f2 convertToString], [f4 convertToString], [[f2 add:f4] convertToString]);
        
        Fraction *f5 = [f4 testPointerAddress];
        NSLog(@"f5 address is %p", f5);
        
        Fraction *f6 = [[Fraction alloc] init];
        f6.numerator = -1;
        f6.denominator = 4;
        NSLog(@"negative fraction add is: %@", [[f6 add:f4] convertToString]);
        
        NSLog(@"%@ subtract %@ is: %@", [f4 convertToString], [f2 convertToString], [[f4 subtract:f2] convertToString]);
        NSLog(@"%@ multiple %@ is: %@", [f4 convertToString], [f3 convertToString], [[f4 multiple:f3] convertToString]);
        NSLog(@"%@ divide %@ is: %@", [f4 convertToString], [f2 convertToString], [[f4 divide:f2] convertToString]);
        
        Fraction *f7 = [[Fraction alloc] init];
        f7.numerator = 4;
        f7.denominator = 10;
        NSLog(@"%@", [f7 convertToString: false]);
        NSLog(@"%@", [f7 convertToString]);
        
        Fraction *f8 = [[Fraction alloc] init];
        f8.numerator = -1;
        f8.denominator = 2;
        NSLog(@"%@ add %@ is: %@", [f6 convertToString], [f8 convertToString], [[f6 add:f8] convertToString]);
        
    }
    return 0;
}
