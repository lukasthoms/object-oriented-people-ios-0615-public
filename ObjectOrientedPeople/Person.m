//
//  Person.m
//  ObjectOrientedPeople
//
//  Created by Lukas Thoms on 5/26/15.
//  Copyright (c) 2015 al-tyus.com. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype) initWithName:(NSString *)name {
    if ((self = [super init])) {
        _name = name;
    }
    return self;
}


- (NSNumber *) grow
{
    if (self.isFemale)
    {
        if ([self.age integerValue] < 11) {
            float low_bound = 0;
            float high_bound = 1;
            float rndValue = (((float)arc4random()/0x100000000)*(high_bound-low_bound)+low_bound);
            float newHeightFloat = [self.height floatValue] + rndValue;
            self.height = [NSNumber numberWithFloat:newHeightFloat];
            return self.height;
        }
        else if ([self.age integerValue] >= 11 && [self.age integerValue] <= 15) {
            float low_bound = 0.5;
            float high_bound = 2;
            float rndValue = (((float)arc4random()/0x100000000)*(high_bound-low_bound)+low_bound);
            float newHeightFloat = [self.height floatValue] + rndValue;
            self.height = [NSNumber numberWithFloat:newHeightFloat];
            return self.height;
        }
        else return self.height;
    
        
    } else
    {   if ([self.age integerValue] < 12) {
            float low_bound = 0;
            float high_bound = 1;
            float rndValue = (((float)arc4random()/0x100000000)*(high_bound-low_bound)+low_bound);
            float newHeightFloat = [self.height floatValue] + rndValue;
            self.height = [NSNumber numberWithFloat:newHeightFloat];
            return self.height;
        }
        else if ([self.age integerValue] >= 12 && [self.age integerValue] <= 16) {
            float low_bound = 0.5;
            float high_bound = 3.5;
            float rndValue = (((float)arc4random()/0x100000000)*(high_bound-low_bound)+low_bound);
            float newHeightFloat = [self.height floatValue] + rndValue;
            self.height = [NSNumber numberWithFloat:newHeightFloat];
            return self.height;
        }
    
        else return self.height;
    
    }
}

- (void)addFriends:(NSArray *)friends
    {
    self.friends = [friends mutableCopy];
}

- (NSString *)generatePartyList
    {
    NSString *party;
    for (Person *friend in self.friends) {
        if (party == nil) {
            party = friend.name;
        } else {
            party = [party stringByAppendingFormat:@", %@", friend.name];
        }
    }
    return party;
}

- (BOOL)removeFriend:(Person *)friend
    {
    NSMutableArray *friends = self.friends;
        BOOL remove = NO;
    for (Person *person in friends) {
        if ([person isEqual:friend]) {
            [self.friends removeObject:person];
            remove = YES;
        }
    } return remove;
}

@end

