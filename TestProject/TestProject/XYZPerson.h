//
//  XYZPerson.h
//  TestProject
//  Created by Prashant Sabhnani on 11/4/14.
//  Copyright (c) 2014 ABC CORP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

@property NSMutableString *firstName;
@property NSString *lastName;
@property NSDate *dateOfBirth;

- (id) initWithFirstName:(NSMutableString *)firstNameParam LastName:(NSString *)lastNameParam;
- (NSString *) fullName;
- (void)sayHello;
- (void)sayHowAreYouDoing;
- (void)sayNiceToMeetYou;
- (void)saySomething:(NSString *)greeting;
- (void)dealloc;
+ (id)person;
@end
