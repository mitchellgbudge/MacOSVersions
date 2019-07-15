//
//  LSIMacOSVersion.h
//  MacOSVersions
//
//  Created by Mitchell Budge on 7/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIMacOSVersion : NSObject


@property NSString *codename;
@property NSString *releaseDate;

- (instancetype)initWithCodename:(NSString *)codename
                     releaseDate:(NSString *)releaseDate;



@end

NS_ASSUME_NONNULL_END
