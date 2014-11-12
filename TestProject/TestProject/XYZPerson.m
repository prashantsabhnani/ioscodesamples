//
//  XYZPerson.m
//  TestProject
//
//  Created by Prashant Sabhnani on 11/4/14.
//  Copyright (c) 2014 ABC CORP. All rights reserved.
//

#import "XYZPerson.h"

@implementation XYZPerson

- (id)initWithFirstName:(NSMutableString *)firstNameParam LastName:(NSString *)lastNameParam
{
    self = [super init];
    
    if(self)
    {
        self.firstName = firstNameParam;
        self.lastName = lastNameParam;
    }
    
    return self;
}

- (NSString *) fullName
{
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (void)sayHello
{
    NSString *helloString = [NSString stringWithFormat:@"Hello, %@!", [self fullName]];
   [self saySomething:helloString];
}

- (void)sayHowAreYouDoing
{
    [self saySomething:@"How are you doing, World!"];
}

- (void)sayNiceToMeetYou
{
    [self saySomething:@"Nice to meet you, World!"];
}
- (void)saySomething:(NSString *)greeting
{
    NSLog(@"%@", greeting);
}

+ (id)person
{
    return [[self alloc] init];
}

- (void) dealloc
{
    if(self.firstName)
    {
        self.firstName = nil;
    }
    
    if(self.lastName)
    {
        self.lastName = nil;
    }
    
    if(self.dateOfBirth)
    {
        self.dateOfBirth = nil;
    }
    NSLog(@"XYZPerson is deallocated");
}

@end
