//
//  ViewController.m
//  CollectionView
//
//  Created by chaitanya on 14/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "CollectionController.h"

@interface ViewController ()
@property (assign, nonatomic)int textIndex;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    images = [[NSArray alloc]initWithObjects:@"Dhoni.png", @"Virat Kohli.png", @"Gautam.png", @"Yuvraj Singh.png", @"Sachin Tendulkar.png", @"Kumar Sangakkara.png", nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return images.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"Cell";
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
  //  UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
  cell.recipeImageView.image = [UIImage imageNamed:[images objectAtIndex:indexPath.row]];
    
    return cell;
    
}
//
//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
//{
//    return CGSizeMake(collectionView.frame.size.width
//                      * 0.5 - 10, collectionView.frame.size.width
//                      * 0.5 - 10);
//}


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
//    [self performSegueWithIdentifier:@"pass" sender:self];
    _textIndex = indexPath.row;
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CollectionController *table = [segue destinationViewController];
    // UIImage *img = [UIImage imageNamed:[imageRecipes2 objectAtIndex:path.row]];
    table.img = [images objectAtIndex:_textIndex];
    
    
}
@end
