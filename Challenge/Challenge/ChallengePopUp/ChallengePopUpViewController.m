//
//  ChallengePopUpViewController.m
//  Challenge
//
//  Created by Muhammad Ahad on 21/08/2023.
//

#import "ChallengePopUpViewController.h"
#import "Rate.h"
#import "RatesTableViewCell.h"

@interface ChallengePopUpViewController ()



@end

@implementation ChallengePopUpViewController 

NSMutableArray *ratesArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[[UIColor grayColor] colorWithAlphaComponent:.2];
    self.popUpView.layer.cornerRadius = 15;
    self.popUpView.layer.shadowOpacity = 0.0;
    self.popUpView.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    [super viewDidLoad];
    
    Rate* rate1 = [[Rate alloc]initWithRate:@"Indian Currency" andCurrency:@"Inr" andRate:@"271.6"];
    
    Rate* rate2 = [[Rate alloc]initWithRate:@"Indian Currency" andCurrency:@"Inr" andRate:@"271.6"];
    
    Rate* rate3 = [[Rate alloc]initWithRate:@"Indian Currency" andCurrency:@"Inr" andRate:@"271.6"];
    
    Rate* rate4 = [[Rate alloc]initWithRate:@"Indian Currency" andCurrency:@"Inr" andRate:@"271.6"];
    
    Rate* rate5 = [[Rate alloc]initWithRate:@"Indian Currency" andCurrency:@"Inr" andRate:@"271.6"];
    
    
    ratesArray = [NSMutableArray arrayWithObjects:rate1, rate2, rate3, rate4, rate5, nil];
    
    [self.ratesTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"RatesTableViewCell"];
    
    self.ratesTableView.dataSource = self;
    self.ratesTableView.delegate = self;
   

}



// number of rows in table view
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return ratesArray.count;
}

// create a cell for each table view row
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // create a new cell if needed or reuse an old one
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RatesTableViewCell"]; ;

    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"RatesTableViewCell"];
    }
    
    RatesTableViewCell * ratesCell = (RatesTableViewCell *) cell;
    
//    ratesCell.title.text = [ratesArray[indexPath.row] title];
//    [ratesCell currency].text = [ratesArray[indexPath.row] currency];
    
//    [[ratesCell currency] setText: [ratesArray[indexPath.row] currency]];
//    ratesCell.currency.text = [ratesArray[indexPath.row] currency];
    
    
//    ratesCell.currencyValue.text = [ratesArray[indexPath.row] currencyValue];
 
    return cell;
}
    
// method to run when table view cell is tapped
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"You tapped cell number %ld.", (long)indexPath.row);
}





@end
