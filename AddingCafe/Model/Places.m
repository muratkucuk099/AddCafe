//
//  Places.m
//  AddingCafe
//
//  Created by Mac on 25.01.2024.
//

#import <Foundation/Foundation.h>
#import "Places.h"

@implementation Places

- (instancetype)initWithTitle:(NSString *)title
                  description:(NSString *)descriptionText
                     latitude:(double)latitude
                    longitude:(double)longitude {
    self = [super init];
    if (self) {
        _title = title;
        _descriptionText = descriptionText;
        _latitude = latitude;
        _longitude = longitude;
    }
    return self;
}

@end
