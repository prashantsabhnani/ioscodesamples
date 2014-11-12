//
//  main.m
//  TestProject
//
//  Created by Prashant Sabhnani on 11/4/14.
//  Copyright (c) 2014 ABC CORP. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"

int main(int argc, char * argv[])
{
    
   @autoreleasepool {
       XYZPerson *newPerson = [XYZPerson person];
       NSMutableString *aFirstName = [NSMutableString stringWithFormat:@"John"];
       newPerson =[newPerson initWithFirstName:aFirstName LastName:@"Doe"];
       [aFirstName appendString:@"ny"];
       [newPerson sayHello];
       [newPerson sayHowAreYouDoing];
       [newPerson sayNiceToMeetYou];
       aFirstName = nil;
       newPerson = nil;
       
       
       XYZPerson *newShoutingPerson = [XYZShoutingPerson person];
       newShoutingPerson = [newShoutingPerson initWithFirstName:@"Jeanne" LastName:@"Doe"];
       [newShoutingPerson sayHello];
       [newShoutingPerson sayHowAreYouDoing];
       [newShoutingPerson sayNiceToMeetYou];
       
       XYZPerson *nilPerson;
       
       if(!nilPerson)
       {
           NSLog(@"Nil object found");
       }
       else
       {
           NSLog(@"Object found is not nil");
       }
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
  }
    
}
