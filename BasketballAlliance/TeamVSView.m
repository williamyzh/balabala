//
//  teamVSView.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 9/21/13.
//  Copyright (c) 2013 Anjuke Inc. All rights reserved.
//

#import "TeamVSView.h"

@interface TeamVSView ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *VSHistory;
@end
@implementation TeamVSView
@synthesize VSHistory = _VSHistory;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.VSHistory = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 280) style:UITableViewStylePlain];
        self.VSHistory.delegate = self;
        self.VSHistory.dataSource = self;
        [self addSubview:self.VSHistory];
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
- (void)configWithData:(NSDictionary *)data{
    
}

#pragma mark - tableviewDatesource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

#pragma mark - tableviewDelegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *teamVSViewiden = @"teamVSViewIdenti";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:teamVSViewiden];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:teamVSViewiden];
        
    }
    if (indexPath.row == 0) {
        cell.textLabel.text = @"对战史";
    }else{
        cell.textLabel.text = @"12年9月 VS 森林狼  胜";
    }
    return cell;
}

@end
