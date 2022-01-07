//
//  RenamingOC.h
//  swift_master
//
//  Created by admin on 2022/1/5.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RenamingOC : NSObject
@property BOOL includesCrust;
@property BOOL isIncludesCrust NS_SWIFT_NAME(isCrusty);
- (void)getRed:(nullable CGFloat *)red
         green:(nullable CGFloat *)green
          blue:(nullable CGFloat *)blue
         alpha:(nullable CGFloat *)alpha NS_REFINED_FOR_SWIFT;
@end

NS_ASSUME_NONNULL_END
