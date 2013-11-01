//
//  ViewController.m
//  Iinspre
//
//  Created by burak firik on 10/26/13.
//  Copyright (c) 2013 Criptonion LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.myQuotes=@[@"Live and let live",
                    @"Don't cry over spilt milk",
                    @"Always look on the bright side of life",
                    @"Nobody's perfect",
                    @"Can't see the woods for the trees",
                    @"Better to have loved and lost then not loved at all",
                    @"The early bird catches the worm",
                    @"As slow as a wet week"];
    
    
    NSString *plistCatPath=[[NSBundle mainBundle] pathForResource:@"quotes"  ofType:@"plist"];
    
    self.movieQuotes=[NSMutableArray arrayWithContentsOfFile:plistCatPath];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -
#pragma mark DataSourceDelegate

-(IBAction)quoteButtonTapped:(id)sender{
    int array_tot=[self.myQuotes count];
    int index=(arc4random()%array_tot);
    NSString *my_quote=self.myQuotes[index];
    self.quoteText.text=[NSString stringWithFormat:@"Quote:\n\n%@",my_quote];
    
    
}
@end
