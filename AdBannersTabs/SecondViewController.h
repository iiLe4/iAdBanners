//
//  SecondViewController.h
//  AdBannersTabs
//
//  Created by Ileana Padilla on 13/03/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imageBanner1;
@property (strong, nonatomic) IBOutlet UIImageView *imageBanner2;
@property (strong, nonatomic) IBOutlet UIImageView *imageBanner3;
- (IBAction)buttonRefreshPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *buttonRefresh;
@property (strong, nonatomic) NSArray *urlArray;
@end
