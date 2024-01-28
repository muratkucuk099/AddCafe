//
//  Places.h
//  AddingCafe
//
//  Created by Mac on 25.01.2024.
//

#ifndef Places_h
#define Places_h

#import <Foundation/Foundation.h>

@interface Places : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *descriptionText;
@property (nonatomic, assign) double latitude;
@property (nonatomic, assign) double longitude;

- (instancetype)initWithTitle:(NSString *)title
                 description:(NSString *)descriptionText
                    latitude:(double)latitude
                   longitude:(double)longitude;

@end

#endif /* Places_h */
