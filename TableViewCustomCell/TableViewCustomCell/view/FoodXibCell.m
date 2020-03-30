//
//  TableViewCell.m
//  TableViewCustomCell
//
//  Created by 谢鑫 on 2019/5/19.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "FoodXibCell.h"
#import "FoodModel.h"
@implementation FoodXibCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
+(instancetype)cell{
    FoodXibCell* cell=[[[NSBundle mainBundle]loadNibNamed:@"FoodXibCell" owner:self options:nil]lastObject];
    
    return cell;
}
-(void)updateCellWithMode:(FoodModel *)model{
    if(model.promo.length==0){
        [self.promoImageView setHidden:YES];
    }else{
        [self.promoImageView setHidden:NO];
        [self.promoImageView setImage:[UIImage imageNamed:model.promo]];
    }
    [self.iconImageView setImage:[UIImage imageNamed:model.icon]];
    [self.titleLabel setText:model.title];
    [self.noteLabel setText:model.note];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
