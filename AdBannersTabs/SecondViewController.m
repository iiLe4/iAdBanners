//
//  SecondViewController.m
//  AdBannersTabs
//
//  Created by Ileana Padilla on 13/03/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end
NSUInteger randomIndex1;
NSUInteger randomIndex2;
NSUInteger randomIndex3;
@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.urlArray = [[NSArray alloc]initWithObjects:@"http://developerji.com/ImagesUpload/banners20130924.png", @"http://titoherrera.files.wordpress.com/2013/03/banner-web-retratos-2013.jpg?w=595&h=220",@"http://images04.olx-st.com/ui/17/65/54/1374845009_528576154_3-Venta-de-Collares-de-Plastizuncho-para-todas-las-Redes-de-Salud-de-Lima-y-Provincias-Lima.jpg",@"http://cachondeoymas.files.wordpress.com/2010/03/media-marktc2ae-sin-iva.jpg?w=450",@"http://fc09.deviantart.net/fs71/f/2012/125/5/0/the_avengers__thor_facebook_banner_by_yorkemaster-d4ym4am.jpg",@"http://criticalbreakdown.net/wp-content/uploads/2013/04/ironman3-banner.png",@"http://cdn.unleashthefanboy.com/wp-content/uploads/2013/10/HungerGamesTopBanner1.jpg",nil];
    
    NSURL *url1 = [NSURL URLWithString:self.urlArray[0]];
    NSURL *url2 = [NSURL URLWithString:self.urlArray[1]];
    NSURL *url3 = [NSURL URLWithString:self.urlArray[2]];
    NSData *imagen1 = [[NSData alloc]initWithContentsOfURL:url1];
    NSData *imagen2 = [[NSData alloc]initWithContentsOfURL:url2];
    NSData *imagen3 = [[NSData alloc]initWithContentsOfURL:url3];
    self.imageBanner1.image = [[UIImage alloc]initWithData:imagen1];
    self.imageBanner2.image = [[UIImage alloc]initWithData:imagen2];
    self.imageBanner3.image = [[UIImage alloc]initWithData:imagen3];

    //imageWithURL
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonRefreshPressed:(id)sender {
    randomIndex1 = arc4random() % [self.urlArray count];
    randomIndex2 = arc4random() % [self.urlArray count];
    randomIndex3 = arc4random() % [self.urlArray count];
    NSURL *url1 = [NSURL URLWithString:self.urlArray[randomIndex1]];
    NSURL *url2 = [NSURL URLWithString:self.urlArray[randomIndex2]];
    NSURL *url3 = [NSURL URLWithString:self.urlArray[randomIndex3]];
    NSData *imagen1 = [[NSData alloc]initWithContentsOfURL:url1];
    NSData *imagen2 = [[NSData alloc]initWithContentsOfURL:url2];
    NSData *imagen3 = [[NSData alloc]initWithContentsOfURL:url3];
    self.imageBanner1.image = [[UIImage alloc]initWithData:imagen1];
    self.imageBanner2.image = [[UIImage alloc]initWithData:imagen2];
    self.imageBanner3.image = [[UIImage alloc]initWithData:imagen3];
}
@end
