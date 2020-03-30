//
//  FoodModel.m
//  TableViewCustomCell
//
//  Created by 谢鑫 on 2019/5/17.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "FoodModel.h"

@implementation FoodModel
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}
+ (instancetype)modelWithDict:(NSDictionary *)dict{
    FoodModel *mode=[[FoodModel alloc]init];
    [mode setValuesForKeysWithDictionary:dict];
    return mode;
}
@end
