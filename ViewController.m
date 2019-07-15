//
//  ViewController.m
//  MacOSVersions
//
//  Created by Mitchell Budge on 7/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "ViewController.h"
#import "LSIMacOSVersion.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LSIMacOSVersion *version = [[LSIMacOSVersion alloc] initWithCodename:@"Panther" releaseDate:@"October 24, 2003"];
    NSLog(@"My name is %@ and I'm %d years old.", @"Mitch", 24);
    NSLog(@"%@ was released on %@.", version.codename, version.releaseDate);
}




@end
