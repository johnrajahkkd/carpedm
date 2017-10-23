//
//  ViewController.m
//  carpedm
//
//  Created by ess on 16/10/17.
//  Copyright © 2017 Smitiv. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    UIPageControl *pageControl;
    UIScrollView *scroll;
    IBOutlet UILabel *IntroText;    
    IBOutlet UIButton *getStartedBtn;
    IBOutlet UIButton *getStartedBtn1;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor clearColor];
    
    //scroll view
    scroll = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    scroll.delegate=self;
    scroll.pagingEnabled = YES;
    scroll.contentSize = CGSizeMake(3 * self.view.frame.size.width, self.view.frame.size.height);
    
    // page control
    pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height*7/10, self.view.frame.size.width, 36)];
    pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    pageControl.currentPageIndicatorTintColor = [UIColor yellowColor];
    pageControl.numberOfPages=3;
    [pageControl addTarget:self action:@selector(pageChanged) forControlEvents:UIControlEventValueChanged];
    
    CGFloat x=0;
    for(int i=1;i<4;i++)
    {
        UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(x+0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        [image setImage:[UIImage imageNamed:[NSString stringWithFormat:@"intro_bg%d.jpg",i]]];
        [scroll addSubview:image];
        
        x+=self.view.frame.size.width;
    }
    
    [self.view addSubview:scroll];
    [self.view addSubview:pageControl];
    [self.view bringSubviewToFront:IntroText];
    [self.view bringSubviewToFront:getStartedBtn];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)_scrollView{
    
    
    //Hide vertical scroll bar and its action
    [scroll setShowsVerticalScrollIndicator:NO];
    // content offset - tells by how much the scroll view has scrolled.
    _scrollView.contentOffset = CGPointMake(_scrollView.contentOffset.x, 0);
    
    CGFloat viewWidth = _scrollView.frame.size.width;
    int pageNumber = floor((_scrollView.contentOffset.x - viewWidth/50) / viewWidth) +1;
    pageControl.currentPage=pageNumber;
    
}

- (void)pageChanged {
    
    int pageNumber = pageControl.currentPage;
    
    CGRect frame = scroll.frame;
    frame.origin.x = frame.size.width*pageNumber;
    frame.origin.y=0;
    
    [scroll scrollRectToVisible:frame animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    
    [super viewDidUnload];
}

@end


//border for buttons in login page
//popview controller
//IQKeyboardmanager


