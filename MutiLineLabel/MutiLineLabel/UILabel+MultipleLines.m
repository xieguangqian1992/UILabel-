//
//  UILabel+MultipleLines.m
//  
//
//  Created by xieguangqian on 17/2/15.
//  Copyright © 2017年 xieguangqian. All rights reserved.
//

#import "UILabel+MultipleLines.h"

@implementation UILabel(MultipleLines)

- (CGSize)setText:(NSString *)text lines:(NSInteger)lines andLineSpacing:(CGFloat)lineSpacing constrainedToSize:(CGSize)cSize;
{
    self.numberOfLines = lines;
    if(!text  || text.length == 0){
        return CGSizeZero;
    }

    CGSize textSize = [self.class sizeWithText:text lines:lines font:self.font andLineSpace:lineSpacing contrainedToSize:cSize];
    if([self p_isSingleLine:textSize.height font:self.font]){
        lineSpacing = 0.0f;
    }

    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.lineSpacing = lineSpacing;
    style.lineBreakMode = NSLineBreakByTruncatingTail;
    NSMutableAttributedString * attr = [[NSMutableAttributedString alloc] initWithString:text attributes:@{NSParagraphStyleAttributeName:style,NSFontAttributeName:self.font}];
    [self setAttributedText:attr];
    return CGSizeMake(textSize.width, textSize.height);

}


+(CGSize) sizeWithText:(NSString *)text lines:(NSInteger) lines font:(UIFont *)font andLineSpace:(CGFloat) lineSpacing contrainedToSize:(CGSize) cSize
{
    if(!text || text.length == 0){
        return CGSizeZero;
    }

    CGFloat oneRowHeight = font.lineHeight;
    CGSize textSize = [text boundingRectWithSize:cSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;

    CGFloat rows = textSize.height / oneRowHeight;
    CGFloat realHeight = oneRowHeight;

    if(lines == 0){
        if(rows >= 1){
            realHeight = (rows * oneRowHeight) + (rows - 1) * lineSpacing;
        }
    }else{
        if(rows >= lines){
            rows = lines;
        }
        realHeight = (rows * oneRowHeight) + (rows - 1) * lineSpacing;
    }
    return CGSizeMake(cSize.width, realHeight);
}

//单行判断

-(BOOL) p_isSingleLine:(CGFloat) height font:(UIFont *) font
{
    BOOL isSingleLine = NO;
    CGFloat oneRowHeight = self.font.lineHeight;
    if(fabs(height - oneRowHeight) < 0.001f){
        isSingleLine = YES;
    }
    return isSingleLine;
}

@end
