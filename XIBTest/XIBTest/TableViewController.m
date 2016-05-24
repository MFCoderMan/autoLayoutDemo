//
//  TableViewController.m
//  XIBTest
//
//  Created by ZhangYunguang on 16/4/20.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "DetailTableViewController.h"
#import "UITableView+FDTemplateLayoutCell.h"

@interface TableViewController ()

@property (nonatomic, strong) NSMutableArray *data;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.title = @"列表";
    self.data = [NSMutableArray arrayWithArray:@[@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，，我是自动变化的cell，我是自动变化的cell",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，",@"我是自动变化的cell，我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell,我是自动变化的cell，我是自动变化的cell，我是自动变化的cell"]];
    self.tableView.estimatedRowHeight = 60.0f;
    //self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    cell.contentLabel.text = self.data[indexPath.row];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailTableViewController *detailViewController = [[DetailTableViewController alloc] init];
    [self.navigationController pushViewController:detailViewController animated:YES];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
