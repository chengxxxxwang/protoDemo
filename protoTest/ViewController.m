//
//  ViewController.m
//  protoTest
//
//  Created by chenxingwang on 16/3/28.
//  Copyright © 2016年 chenxingwang. All rights reserved.
//

#import "ViewController.h"
#import "Person.pb.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    PBUserBuilder * person = [[[[[PBUserBuilder builder] setUserId:@"123"] setName:@"Bob"] setEmail:@"bob@example.com"] build];
    PBUser *person1 = [[[[[PBUser builder] setUserId:@"123"]setNick:@"Bob"]setAvatar:@"Bob@Example.com"] build];
    
    NSData* data = [person1 data];
 
    

    PBCodedInputStream *personData = [PBCodedInputStream streamWithData:data];
        
    NSData *hello = [personData readRawData:person1.serializedSize];
    
    NSLog(@"%@",hello);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
