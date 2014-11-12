//
//  XYZToDoItem.h
//  ToDoList
//
//  Created by Prashant Sabhnani on 11/10/14.
//
//

#import <Foundation/Foundation.h>

@interface XYZToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
