//
//  ViewController.m
//  
//
//  Created by xieguangqian on 17/2/15.
//  Copyright © 2017年 xieguangqian. All rights reserved.
//

#import "ViewController.h"
#import "TestTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *mainTableView;
@property (nonatomic, strong) NSArray *data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.data = @[@"原标题：孟建柱：民营企业经营不规范导致的问题，不盲目翻旧账",@"2月15日，《人民日报》发表了中共中央政治局委员、中央政法委书记孟建柱1月12日在中央政法工作会议上的讲话节选。孟建柱要求，着眼于激发社会创造活力，努力营造良好的法治环境。",@"对改革开放以来各类企业尤其是民营企业因经营不规范引发的问题，要以历史和发展的眼光予以看待，严格遵循法不溯及既往、罪刑法定、从旧兼从轻等原则公正处理，不盲目翻旧账。对已过追诉时效的，不再追究。罪与非罪不清的，实行疑罪从无。坚持有错必纠，积极稳妥地甄别、纠正一批侵犯企业产权的错案。",@"他强调，要在严格依法办事前提下，树立谦抑理念，对通过民事、行政法律手段就能妥善处理的经济案件，不使用刑事强制手段，努力以较小成本取得果。",@"孟建柱要求，树立审慎理念，严格",@"孟建柱要求，树立审慎理念，严格",@"他还要求，树立善意理念，确实需要查封、扣押、冻结财产的，要严格依法进行，防止超标的、超范围，最大限度减少对企业正常生产经营的不利影响；对已经查封、扣押、冻结的涉案财产，要严格区分违法所得与合法财产，对违法所得依法予以追缴、上交国库，对合法财产依法尽快返还",@"他还要求，树立善意理念，确实需要查封、扣押、冻结财产的，要严格依法进行，防止超标的、超范围，最大限度减少对企业正常生产经营的不利影响；对已经查封、扣押、冻结的涉案财产，要严格区分违法所得与合法财产，对违法所得依法予以追缴、上交国库，对合法财产依法尽快返还",@"他还要求，树立善意理念，确实需要查封、扣押、冻结财产的，要严格依法进行，防止超标的、超范围，最大限度减少对企业正常生产经营的不利影响；对已经查封、扣押、冻结的涉案财产，要严格区分违法所得与合法财产，对违法所得依法予以追缴、上交国库，对合法财产依法尽快返还",@"原标题：海口一客机起飞前机舱内“冒烟” 致航班延误",@"孟建柱要求，树立审慎理念，严格",@"原标题：海口一客机起飞前机舱内“冒烟” 致航班延误",@"据搭乘涉事航班的一名旅客介绍",@"中新网海口2月15日电 （记者 洪坚鹏）15日下午，记者从海口美兰国际机场获悉，海南航空一架由海口飞往上海的客机在旅客登机时，机舱内突然冒烟，已经登机的旅客被迫疏散等待后续安排。",@"据搭乘涉事航班的一名旅客介绍",@"中新网海口2月15日电 （记者 洪坚鹏）15日下午，记者从海口美兰国际机场获悉，海南航空一架由海口飞往上海的客机在旅客登机时，机舱内突然冒烟，已经登机的旅客被迫疏散等待后续安排。",@"孟建柱要求，树立审慎理念，严格",@"中新网海口2月15日电 （记者 洪坚鹏）15日下午，记者从海口美兰国际机场获悉，海南航空一架由海口飞往上海的客机在旅客登机时，机舱内突然冒烟，已经登机的旅客被迫疏散等待后续安排。"];

    _mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    _mainTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    _mainTableView.dataSource = self;
    _mainTableView.delegate = self;
    [self.view addSubview:_mainTableView];

    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TestTableViewCell *cell = [TestTableViewCell createCell:tableView];
    [cell setContent:[self.data objectAtIndex:indexPath.row]];
    NSLog(@"%f",cell.cellHeight);
    return cell.cellHeight;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TestTableViewCell *cell = [TestTableViewCell createCell:tableView];
    [cell setContent:[self.data objectAtIndex:indexPath.row]];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
