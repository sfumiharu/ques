//
//  ViewController.m
//  ques
//
//  Created by fumiharu on 2014/04/29.
//
//

#import "ViewController.h"
#import "Detail0ViewController.h"
#import "Detail1ViewController.h"

@interface ViewController (){
    NSArray *sectionTitle;
    NSArray *cellData;
}
@property (strong, nonatomic) IBOutlet UITableView *tableview;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    sectionTitle = [NSArray arrayWithObjects:@"TEST-1", @"TEST-2", nil];
    cellData = [NSArray arrayWithObjects:@"inputText & btnTapped", @"changeText", nil];
    
    [_tableview registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [_tableview setAccessibilityIdentifier:@"tableview"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [sectionTitle count];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [sectionTitle objectAtIndex:section];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [cellData objectAtIndex:indexPath.section];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Detail0ViewController *d0vc = [[Detail0ViewController alloc]initWithNibName:@"Detail0ViewController" bundle:nil];
    Detail1ViewController *d1vc = [[Detail1ViewController alloc]initWithNibName:@"Detail1ViewController" bundle:nil];
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [self.navigationController pushViewController:d0vc animated:YES];
        }
    }else if (indexPath.section == 1){
        if (indexPath.row == 0) {
            [self.navigationController pushViewController:d1vc animated:YES];
        }
    }
    
}
@end
