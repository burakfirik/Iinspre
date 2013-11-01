//
//  ViewController.h
//  Iinspre
//
//  Created by burak firik on 10/26/13.
//  Copyright (c) 2013 Criptonion LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,strong) NSMutableArray *movieQuotes;

@property (nonatomic,strong)IBOutlet UITextView *quoteText;

@property (nonatomic,strong) NSMutableArray *myQuotes;

@property (nonatomic, strong) IBOutlet UISegmentedControl *quoteOpt;

-(IBAction)quoteButtonTapped:(id)sender;

@end
