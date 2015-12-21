//
//  Fraction.h
//  ProgrammingObjC
//
//  Created by Joe on 27/11/2015.
//  Copyright © 2015 Joe. All rights reserved.
//

#ifndef Fraction_h
#define Fraction_h


#endif /* Fraction_h */

#import <Foundation/Foundation.h>
@interface Fraction : NSObject
@property int numerator, denominator;

- (void) print;
- (double) convertToNum;
- (Fraction *) add: (Fraction *) f;
- (Fraction *) subtract: (Fraction *) f;
- (Fraction *) multiple: (Fraction *) f;
- (Fraction *) divide: (Fraction *) f;
- (NSString *) convertToString;
- (NSString *) convertToString: (bool) beReduced;
+ (int) greatestCommonDivisor: (int) value1 and: (int) value2;//最大公约数
+ (int) leastCommonMultiple: (int) value1 and: (int) value2; //最大公倍数
- (int) countAddition;
- (void) set: (int) n : (int) d;
- (Fraction *) testPointerAddress;

@end