//
//  CollectionController.m
//  CollectionView
//
//  Created by chaitanya on 15/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "CollectionController.h"

@interface CollectionController ()

@end

@implementation CollectionController

- (void)viewDidLoad {
    [super viewDidLoad];
    _imageView2.image = [UIImage imageNamed:_img];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
