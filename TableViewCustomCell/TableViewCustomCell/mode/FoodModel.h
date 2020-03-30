//
//  FoodModel.h
//  TableViewCustomCell
//
//  Created by 谢鑫 on 2019/5/17.
//  Copyright © 2019 Shae. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FoodModel : NSObject

@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *note;
@property(nonatomic,copy) NSString *icon;
@property(nonatomic,copy) NSString *promo;

+(instancetype)modelWithDict:(NSDictionary*)dict;
@end

NS_ASSUME_NONNULL_END
