//
//  teamMatesView.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 9/21/13.
//  Copyright (c) 2013 Anjuke Inc. All rights reserved.
//

#import "teamMatesView.h"

@interface teamMatesView ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *teamMatesList;
@end
@implementation teamMatesView
@synthesize teamMatesList = _teamMatesList;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.teamMatesList = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.width) style:UITableViewStylePlain];
        self.teamMatesList.delegate = self;
        self.teamMatesList.dataSource = self;
        [self addSubview:self.teamMatesList];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
#pragma mark - tableviewDatasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
#pragma mark - tableviewDelegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *teammates = @"teammates";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:teammates];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:teammates];
        
    }
    if (indexPath.row == 1) {
        cell.textLabel.text = @"张三";
    }
    if (indexPath.row == 2) {
        cell.textLabel.text = @"李四";
        
    }
    return cell;

}
@end
