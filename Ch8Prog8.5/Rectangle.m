//
//  Rectangle.m
//  ProgrammingObjC
//
//  Created by Joe on 21/12/2015.
//  Copyright © 2015 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@implementation Rectangle
{
    MyPoint *origin;
}

@synthesize width, length;
//@synthesize origin;

- (void) setWidth:(int)value1 andLength:(int)value2
{
    width = value1;
    length = value2;
}
//- (void) setOrigin:(MyPoint *) pt
//{
//    origin = pt;
//}
//
//- (MyPoint *) origin
//{
//    return origin;
//}
- (int) area
{
    return width * length;
}

- (int) premeter
{
    return (width + length) * 2;
}

@end