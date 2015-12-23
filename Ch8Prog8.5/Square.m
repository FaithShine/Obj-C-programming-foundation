//
//  Square.m
//  ProgrammingObjC
//
//  Created by Joe on 21/12/2015.
//  Copyright © 2015 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"

@implementation Square

- (void) setSide:(int)value
{
    [self setWidth:value andLength:value];
}

- (int) side
{
    return self.width;
}
@end