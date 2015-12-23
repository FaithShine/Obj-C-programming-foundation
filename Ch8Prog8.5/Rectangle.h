//
//  Header.h
//  ProgrammingObjC
//
//  Created by Joe on 21/12/2015.
//  Copyright © 2015 Joe. All rights reserved.
//

#ifndef Header_h
#define Header_h


#endif /* Header_h */

@class MyPoint;

@interface Rectangle : NSObject
//{
//    MyPoint *point;
//}
@property
    int width;
@property
    int length;
@property
    MyPoint *origin;

- (void) setWidth: (int) value1 andLength: (int) value2;
- (void) setOrigin:(MyPoint *)pt;
- (MyPoint *) origin;
- (int) area;
- (int) premeter;

@end