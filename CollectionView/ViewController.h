//
//  ViewController.h
//  CollectionView
//
//  Created by chaitanya on 14/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>
{
    NSArray *images;
}

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

