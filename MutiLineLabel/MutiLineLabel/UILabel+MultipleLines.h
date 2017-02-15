//
//  UILabel+MultipleLines.h
//  
//
//  Created by xieguangqian on 17/2/15.
//  Copyright © 2017年 xieguangqian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel(MultipleLines)

/**
 *   计算文本占用的size
 *
 * @param text          文本
 * @param lines         行数 lines = 0不限行数
 * @param font           字体类型
 * @param lineSpacing     行间距
 * @param cSize           文本最大区域
 *
 * @return 文本占用的size
 **/

+(CGSize) sizeWithText:(NSString *)text lines:(NSInteger) lines font:(UIFont *)font andLineSpace:(CGFloat) lineSpacing contrainedToSize:(CGSize) cSize;

- (CGSize)setText:(NSString *)text lines:(NSInteger)lines andLineSpacing:(CGFloat)lineSpacing constrainedToSize:(CGSize)cSize;

@end
