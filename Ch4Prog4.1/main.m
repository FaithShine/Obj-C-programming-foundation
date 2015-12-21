//
//  main.m
//  Ch4Prog4.1
//
//  Created by Joe on 24/11/2015.
//  Copyright © 2015 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int integerVar = 100;
        float floatingVar = 332.3123;
        double doubleVar = 8.44e+5;
        char charVar = 'c';
        
        NSLog(@"integerVar = %i", integerVar);
        NSLog(@"floatVar = %f", floatingVar);
        NSLog(@"doubleVar = %e", doubleVar);
        NSLog(@"doubleVar = %g", doubleVar);
        NSLog(@"charVar = %c", charVar);
        
        long long longIntegerVar = 392;
        NSLog(@"longIntegerVar = %lli", longIntegerVar);
        double doubleVar2 = 3.1e-5;
        double doubleVar3 = 0x.1p3;
        NSLog(@"doubleVar2 = %e", doubleVar2);
        NSLog(@"dobuleVar3 = %f", doubleVar3);
        
        int a = 25;
        int b = 6;
        NSLog(@"a %% b = %i", a%b);
        
    }
    return 0;
}
