//
//  RatesTableViewCell.h
//  Challenge
//
//  Created by Muhammad Ahad on 21/08/2023.
//

#import <UIKit/UIKit.h>
#import "Rate.h"

NS_ASSUME_NONNULL_BEGIN

@interface RatesTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *currency;
@property (weak, nonatomic) IBOutlet UILabel *currencyValue;

@property (weak, nonatomic) IBOutlet UIImageView *countryFlag;

@end

NS_ASSUME_NONNULL_END
