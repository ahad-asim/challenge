//
//  ChallengePopUpViewController.h
//  Challenge
//
//  Created by Muhammad Ahad on 21/08/2023.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChallengePopUpViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *popUpView;

@property (weak, nonatomic) IBOutlet UITableView *ratesTableView;


@end

NS_ASSUME_NONNULL_END
