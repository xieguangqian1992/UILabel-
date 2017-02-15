//
//  TestTableViewCell.m
//  
//
//  Created by xieguangqian on 17/2/15.
//  Copyright © 2017年 xieguangqian. All rights reserved.
//

#import "TestTableViewCell.h"
#import "UILabel+MultipleLines.h"

@interface TestTableViewCell()

@property (nonatomic, strong) UILabel *contenLabel;

@end

@implementation TestTableViewCell

+(TestTableViewCell *) createCell:(UITableView *)tableView
{
    static NSString *re = @"dfsdfsd";
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:re];
    if(cell == nil){
        cell = [[TestTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:re];
    }
    return cell;
}

-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        [self configView];
    }
    return self;
}

-(void) setContent:(NSString *)content
{
    CGSize size= [self.contenLabel setText:content lines:3 andLineSpacing:5 constrainedToSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 24, MAXFLOAT)];
    self.contenLabel.frame = CGRectMake(12, 12, [UIScreen mainScreen].bounds.size.width - 24, size.height);
    self.cellHeight = size.height + 24;
}


-(void) configView
{
    _contenLabel = [[UILabel alloc] initWithFrame:CGRectMake(12, 12, [UIScreen mainScreen].bounds.size.width - 24, 0)];
    _contenLabel.layer.borderWidth = 1.0f;
    _contenLabel.layer.borderColor = [UIColor redColor].CGColor;
    _contenLabel.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_contenLabel];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
