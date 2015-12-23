//
//  main.m
//  Ch8Prog8.5
//
//  Created by Joe on 21/12/2015.
//  Copyright © 2015 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "MyPoint.h"
//@class MyPoint;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        Rectangle *rectangle = [[Rectangle alloc] init];
        [rectangle setWidth:6 andLength:5];
        NSLog(@" area = %i, premeter = %i", [rectangle area], [rectangle premeter]);
        
        Square *square = [[Square alloc] init];
        [square setSide:6];
        NSLog(@"area = %i, premeter = %i, side = %i", [square area], [square premeter], [square side]);
        
        MyPoint *myPoint = [[MyPoint alloc] init];
        myPoint.x = 6;
        myPoint.y = 6;
        
        [rectangle setOrigin:myPoint];
        NSLog(@"rectangle origin is : (%i, %i)", rectangle.origin.x, rectangle.origin.y);
                
    }
    return 0;
}
