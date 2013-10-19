//
//  teamMatesView.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 9/21/13.
//  Copyright (c) 2013 Anjuke Inc. All rights reserved.
//

#import "TeamMatesView.h"
#import "PersonDetailView.h"

@interface TeamMatesView ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *teamMatesList;
@end
@implementation TeamMatesView
@synthesize teamMatesList = _teamMatesList;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.teamMatesList = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width,self.frame.size.width) style:UITableViewStylePlain];
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
    return 30;
}
#pragma mark - tableviewDelegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *teammates = @"teammates";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:teammates];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:teammates];
    }
    if (indexPath.row == 1) {
        cell.textLabel.text = @"张勇";
    }
    if (indexPath.row == 2) {
        cell.textLabel.text = @"田飞";
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = [indexPath row];
    if (row == 1) {
        PersonDetailView *detaiView = [[PersonDetailView alloc] initWithFrame:CGRectMake(1024, 0, self.frame.size.width, self.frame.size.height)];
        [self addSubview:detaiView];
        [UIView animateWithDuration:0.687f animations:^{
            detaiView.frame = CGRectMake(0, 0,self.frame.size.width, self.frame.size.height);
        } completion:^(BOOL finished) {
            
        }];
    }
}
@end
