//
//  LineView.m
//  Sci_Line
//
//  Created by M-SJ077 on 16/7/5.
//  Copyright © 2016年 zhangzhihua. All rights reserved.
//

#import "LineView.h"
#import "backGroundLayer.h"
#import "PointLayer.h"
#import "UIColor+Hex.h"

#define SPACE 30.f
#define LINE_SPACE  50.f
#define LINECOLOR [UIColor colorWithHexString:@"#b9b9b9"].CGColor
#define YEAR_TEXT_COLOR [UIColor colorWithHexString:@"#333333"].CGColor
#define YEARTAG_WDITH (self.frame.size.width - LINE_SPACE *2 - 30)/4.f
#define HEIGHT_TAG_WIDTH 20
#define HEIGHT_TAG_HEIGHT 15
#define TITLE_WIDTH  200.f

@interface LineView ()

@property (nonatomic , strong)backGroundLayer *backLayer;

@property (nonatomic , strong)PointLayer *pointLayer;
//横线
@property (nonatomic , strong)CALayer *line0,*line1,*line2,*line3,*line4;
//年份
@property (nonatomic , strong)CATextLayer *yeartag0,*yeartag1,*yeartag2,*yeartag3,*yeartag4,*yeartag5,*yeartag6;
//高度标志
@property (nonatomic , strong)CATextLayer *heightTag0,*heightTag1,*heightTag2,*heightTag3,*heightTag4;

@property (nonatomic , strong)CATextLayer *TitleLayer;
@end

@implementation LineView

- (instancetype) initWithFrame:(CGRect)frame {
    if (self == [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        self.clipsToBounds = YES;
        [self addBackGroundView];
        [self create_heightLine];
        [self create_yearTags];
        [self create_heightTags];
    }
    return self;
}

//创建横线
-(void)create_heightLine{
    self.line0 = [CALayer layer];
    self.line0.frame = CGRectMake(SPACE, self.frame.size.height - 1 - LINE_SPACE, self.frame.size.width - 2 * SPACE, 1);
    self.line0.backgroundColor = LINECOLOR;
    [self.layer addSublayer:self.line0];
    
    self.line1 = [CALayer layer];
    self.line1.frame = CGRectMake(SPACE, self.frame.size.height - 2 - LINE_SPACE*2, self.frame.size.width - 2 * SPACE, 1);
    self.line1.backgroundColor = LINECOLOR;
    [self.layer addSublayer:self.line1];
    
    self.line2 = [CALayer layer];
    self.line2.frame = CGRectMake(SPACE, self.frame.size.height - 3 - LINE_SPACE*3, self.frame.size.width - 2 * SPACE, 1);
    self.line2.backgroundColor = LINECOLOR;
    [self.layer addSublayer:self.line2];
    
    self.line3 = [CALayer layer];
    self.line3.frame = CGRectMake(SPACE, self.frame.size.height - 4 - LINE_SPACE*4, self.frame.size.width - 2 * SPACE, 1);
    self.line3.backgroundColor = LINECOLOR;
    [self.layer addSublayer:self.line3];
    
    self.line4 = [CALayer layer];
    self.line4.frame = CGRectMake(SPACE, self.frame.size.height - 5 - LINE_SPACE*5, self.frame.size.width - 2 * SPACE, 1);
    self.line4.backgroundColor = LINECOLOR;
    [self.layer addSublayer:self.line4];
}


//创建折线(非background)
-(void)addBackGroundView{
    [self.layer addSublayer:self.backLayer];
    //[self.layer addSublayer:self.pointLayer];
}

-(backGroundLayer *)backLayer{
    if(!_backLayer){
        _backLayer = [[backGroundLayer alloc]init];
    }
    return _backLayer;
}

-(PointLayer *)pointLayer{
    if(!_pointLayer){
        _pointLayer = [[PointLayer alloc]init];
    }
    return _pointLayer;
}

//创建年标注
-(void)create_yearTags{
    _yeartag0 = [CATextLayer layer];
    _yeartag0.string = @"2012";
    _yeartag0.frame = CGRectMake(SPACE , self.frame.size.height - 1 - LINE_SPACE + 5, YEARTAG_WDITH, 15);
    _yeartag0.fontSize = 13.f;
    _yeartag0.alignmentMode = kCAAlignmentCenter;
    _yeartag0.foregroundColor =YEAR_TEXT_COLOR;
    //_yeartag0.backgroundColor = [UIColor redColor].CGColor;
    [self.layer addSublayer:_yeartag0];
    //分割 1
    CALayer *separate0 = [CALayer layer];
    separate0.backgroundColor =YEAR_TEXT_COLOR;
    separate0.frame = CGRectMake(SPACE + YEARTAG_WDITH, self.frame.size.height - 1 - LINE_SPACE + 2, 1, 5);
    [self.layer addSublayer:separate0];
    
    _yeartag1 = [CATextLayer layer];
    _yeartag1.string = @"2013";
    _yeartag1.frame = CGRectMake(YEARTAG_WDITH +SPACE , self.frame.size.height - 1 - LINE_SPACE + 5, YEARTAG_WDITH, 15);
    _yeartag1.fontSize = 13.f;
    _yeartag1.alignmentMode = kCAAlignmentCenter;
    _yeartag1.foregroundColor =YEAR_TEXT_COLOR;
    //_yeartag1.backgroundColor = [UIColor redColor].CGColor;
    [self.layer addSublayer:_yeartag1];
    //分割2
    CALayer *separate1 = [CALayer layer];
    separate1.backgroundColor =YEAR_TEXT_COLOR;
    separate1.frame = CGRectMake(SPACE + YEARTAG_WDITH*2, self.frame.size.height - 1 - LINE_SPACE + 2, 1, 5);
    [self.layer addSublayer:separate1];
    
    _yeartag2 = [CATextLayer layer];
    _yeartag2.string = @"2014";
    _yeartag2.frame = CGRectMake(YEARTAG_WDITH*2 + SPACE , self.frame.size.height - 1 - LINE_SPACE + 5, YEARTAG_WDITH, 15);
    _yeartag2.fontSize = 13.f;
    _yeartag2.alignmentMode = kCAAlignmentCenter;
    _yeartag2.foregroundColor =YEAR_TEXT_COLOR;
    //_yeartag2.backgroundColor = [UIColor redColor].CGColor;
    [self.layer addSublayer:_yeartag2];
    //分割3
    CALayer *separate2 = [CALayer layer];
    separate2.backgroundColor =YEAR_TEXT_COLOR;
    separate2.frame = CGRectMake(SPACE + YEARTAG_WDITH*3, self.frame.size.height - 1 - LINE_SPACE + 2, 1, 5);
    [self.layer addSublayer:separate2];
    
    _yeartag3 = [CATextLayer layer];
    _yeartag3.string = @"2015";
    _yeartag3.frame = CGRectMake(YEARTAG_WDITH*3 + SPACE , self.frame.size.height - 1 - LINE_SPACE + 5, YEARTAG_WDITH, 15);
    _yeartag3.fontSize = 13.f;
    _yeartag3.alignmentMode = kCAAlignmentCenter;
    _yeartag3.foregroundColor =YEAR_TEXT_COLOR;
    //_yeartag3.backgroundColor = [UIColor redColor].CGColor;
    [self.layer addSublayer:_yeartag3];
    //分割4
    CALayer *separate3 = [CALayer layer];
    separate3.backgroundColor =YEAR_TEXT_COLOR;
    separate3.frame = CGRectMake(SPACE + YEARTAG_WDITH*4, self.frame.size.height - 1 - LINE_SPACE + 2, 1, 5);
    [self.layer addSublayer:separate3];
    
    _yeartag4 = [CATextLayer layer];
    _yeartag4.string = @"2016";
    _yeartag4.frame = CGRectMake(YEARTAG_WDITH*4+ SPACE , self.frame.size.height - 1 - LINE_SPACE + 5, YEARTAG_WDITH, 15);
    _yeartag4.fontSize = 13.f;
    _yeartag4.alignmentMode = kCAAlignmentCenter;
    _yeartag4.foregroundColor =YEAR_TEXT_COLOR;
    [self.layer addSublayer:_yeartag4];
    
}

//创建高度
-(void)create_heightTags{
    self.heightTag0 = [CATextLayer layer];
    self.heightTag0.frame = CGRectMake(5, self.frame.size.height - 1 - LINE_SPACE -10, HEIGHT_TAG_WIDTH, HEIGHT_TAG_HEIGHT);
    self.heightTag0.string = @"-2";
    self.heightTag0.foregroundColor = [UIColor grayColor].CGColor;
    self.heightTag0.fontSize = 13;
    self.heightTag0.alignmentMode = kCAAlignmentCenter;
    [self.layer addSublayer:self.heightTag0];
    
    self.heightTag1 = [CATextLayer layer];
    self.heightTag1.frame = CGRectMake(5, self.frame.size.height - 1 - LINE_SPACE*2-10, HEIGHT_TAG_WIDTH, HEIGHT_TAG_HEIGHT);
    self.heightTag1.string = @"0";
    self.heightTag1.foregroundColor = [UIColor grayColor].CGColor;
    self.heightTag1.fontSize = 13;
    self.heightTag1.alignmentMode = kCAAlignmentCenter;
    [self.layer addSublayer:self.heightTag1];
    
    self.heightTag2 = [CATextLayer layer];
    self.heightTag2.frame = CGRectMake(5, self.frame.size.height - 1 - LINE_SPACE*3-10, HEIGHT_TAG_WIDTH, HEIGHT_TAG_HEIGHT);
    self.heightTag2.string = @"2";
    self.heightTag2.foregroundColor = [UIColor grayColor].CGColor;
    self.heightTag2.fontSize = 13;
    self.heightTag2.alignmentMode = kCAAlignmentCenter;
    [self.layer addSublayer:self.heightTag2];
    
    self.heightTag3 = [CATextLayer layer];
    self.heightTag3.frame = CGRectMake(5, self.frame.size.height - 1 - LINE_SPACE*4-10, HEIGHT_TAG_WIDTH, HEIGHT_TAG_HEIGHT);
    self.heightTag3.string = @"4";
    self.heightTag3.foregroundColor = [UIColor grayColor].CGColor;
    self.heightTag3.fontSize = 13;
    self.heightTag3.alignmentMode = kCAAlignmentCenter;
    [self.layer addSublayer:self.heightTag3];
    
    self.heightTag4 = [CATextLayer layer];
    self.heightTag4.frame = CGRectMake(5, self.frame.size.height - 1 - LINE_SPACE*5-10, HEIGHT_TAG_WIDTH, HEIGHT_TAG_HEIGHT);
    self.heightTag4.string = @"6";
    self.heightTag4.foregroundColor = [UIColor grayColor].CGColor;
    self.heightTag4.fontSize = 13;
    self.heightTag4.alignmentMode = kCAAlignmentCenter;
    [self.layer addSublayer:self.heightTag4];
    
    self.TitleLayer = [CATextLayer layer];
    self.TitleLayer.frame = CGRectMake(self.frame.size.width/2 - TITLE_WIDTH/2 , 20, TITLE_WIDTH, 50);
    self.TitleLayer.fontSize = 15;
    self.TitleLayer.alignmentMode = kCAAlignmentCenter;
    self.TitleLayer.foregroundColor = [UIColor grayColor].CGColor;
    self.TitleLayer.string = @"IF曲线";
    [self.layer addSublayer:self.TitleLayer];
}

-(void)animation{
    [self.backLayer triangleAnimate];
}

-(void)drawRect:(CGRect)rect{
    
}

@end
