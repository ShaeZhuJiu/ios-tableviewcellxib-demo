//
//  TableViewCell.h
//  TableViewCustomCell
//
//  Created by 谢鑫 on 2019/5/19.
//  Copyright © 2019 Shae. All rights reserved.
//

#import <UIKit/UIKit.h>
#import"FoodModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface FoodXibCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UIImageView *promoImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
- (void)updateCellWithMode:(FoodModel*)model;
+(instancetype)cell;
@end

NS_ASSUME_NONNULL_END
