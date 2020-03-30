//
//  FoodCellTableViewCell.h
//  TableViewCustomCell
//
//  Created by 谢鑫 on 2019/5/18.
//  Copyright © 2019 Shae. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface FoodCell : UITableViewCell

@property(nonatomic,strong)UIImageView *promoImageView;
@property(nonatomic,strong)UIImageView *iconImageView;
@property(nonatomic,strong)UILabel *titleLabel;
@property(nonatomic,strong)UILabel *noteLabel;
- (void)updateCellWithMode:(FoodModel*)model;
@end


NS_ASSUME_NONNULL_END
