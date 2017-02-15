//
//  TestTableViewCell.h
//  
//
//  Created by xieguangqian on 17/2/15.
//  Copyright © 2017年 xieguangqian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestTableViewCell : UITableViewCell

@property (nonatomic, assign) CGFloat cellHeight;


+(TestTableViewCell *) createCell:(UITableView *)tableView;


-(void) setContent:(NSString *)content;

@end
