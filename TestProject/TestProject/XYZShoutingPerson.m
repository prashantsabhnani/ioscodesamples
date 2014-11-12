//
//  XYZShoutingPerson.m
//  TestProject
//
//  Created by Prashant Sabhnani on 11/9/14.
//  Copyright (c) 2014 ABC CORP. All rights reserved.
//

#import "XYZShoutingPerson.h"

@implementation XYZShoutingPerson
- (void) saySomething:(NSString *)greeting
{
    NSString *upperCaseString = [greeting uppercaseString];
    [super saySomething:upperCaseString];
}
@end
