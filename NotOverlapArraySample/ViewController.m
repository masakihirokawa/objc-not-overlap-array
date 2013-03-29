//
//  ViewController.m
//  NotOverlapArraySample
//
//  Created by 廣川政樹 on 2013/03/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //重複している可能性がある配列
  NSArray *myArray;
  myArray = [NSArray arrayWithObjects:
             @"Apple", @"Banana", @"Apple", nil];
  
  NSLog(@"originalArray = %@", myArray);
  
  //配列からセットを作成する
  NSSet *mySet;
  mySet = [NSSet setWithArray:myArray];
  
  //セットからオブジェクトを作成する
  myArray = [mySet allObjects];
  NSLog(@"newArray = ", myArray);
}

@end
