//
//  GuessPictureVC.m
//  GuessByPictures
//
//  Created by Macbook on 18/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "GuessPictureVC.h"

@interface GuessPictureVC ()
{
    NSMutableArray * dataArray;
    NSMutableDictionary * data;
    int random;
}


@end

@implementation GuessPictureVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    
    dataArray = [[NSMutableArray alloc] init];
    
    
    if ([_type isEqualToString:@"Countries"])
    {
        _backgroundImageView.image = [UIImage imageNamed:@"countries.png"];
        [self setCountries];
        
        _option1Button.backgroundColor = [UIColor blueColor];
        _option2Button.backgroundColor = [UIColor blueColor];
        _option3Button.backgroundColor = [UIColor blueColor];
        _option4Button.backgroundColor = [UIColor blueColor];
        
    }
    else if ([_type isEqualToString:@"Cities"])
    {
        _backgroundImageView.image = [UIImage imageNamed:@"cities.png"];
        [self setCities];
        
        _option1Button.backgroundColor = [UIColor purpleColor];
        _option2Button.backgroundColor = [UIColor purpleColor];
        _option3Button.backgroundColor = [UIColor purpleColor];
        _option4Button.backgroundColor = [UIColor purpleColor];
    }
    
    [self setFirstTime];
    _nextButton.enabled = false;
    
    self.navigationController.navigationBar.hidden =false;
  
}



- (IBAction)nextButtonTouched:(id)sender
{
    [self setNext];
}

- (IBAction)option1ButtonTouched:(id)sender
{
    NSDictionary * d = [dataArray objectAtIndex:random];
    
    _option1Button.enabled = false;
    _option2Button.enabled = false;
    _option3Button.enabled = false;
    _option4Button.enabled = false;
    
    
    if ([_option1Button.titleLabel.text isEqualToString:[d valueForKey:@"answer"]])
    {
        _resultLabel.text = @"Correct - Press NEXT";
        _nextButton.enabled = true;
    }
    else
    {
        _resultLabel.text = @"Wrong  - Press NEXT";
        _nextButton.enabled = true;
    }
}

- (IBAction)option2ButtonTouched:(id)sender
{
    NSDictionary * d = [dataArray objectAtIndex:random];
    
    _option1Button.enabled = false;
    _option2Button.enabled = false;
    _option3Button.enabled = false;
    _option4Button.enabled = false;
    
    
    if ([_option2Button.titleLabel.text isEqualToString:[d valueForKey:@"answer"]])
    {
        _resultLabel.text = @"Correct - Press NEXT";
        _nextButton.enabled = true;
    }
    else
    {
        _resultLabel.text = @"Wrong  - Press NEXT";
        _nextButton.enabled = true;
    }
}

- (IBAction)option3ButtonTouched:(id)sender
{
    NSDictionary * d = [dataArray objectAtIndex:random];
    
    _option1Button.enabled = false;
    _option2Button.enabled = false;
    _option3Button.enabled = false;
    _option4Button.enabled = false;
    
    
    if ([_option3Button.titleLabel.text isEqualToString:[d valueForKey:@"answer"]])
    {
        _resultLabel.text = @"Correct - Press NEXT";
        _nextButton.enabled = true;
    }
    else
    {
        _resultLabel.text = @"Wrong  - Press NEXT";
        _nextButton.enabled = true;
    }
}

- (IBAction)option4ButtonTouched:(id)sender
{
    NSDictionary * d = [dataArray objectAtIndex:random];
    
    _option1Button.enabled = false;
    _option2Button.enabled = false;
    _option3Button.enabled = false;
    _option4Button.enabled = false;
    
    
    if ([_option4Button.titleLabel.text isEqualToString:[d valueForKey:@"answer"]])
    {
        _resultLabel.text = @"Correct - Press NEXT";
        _nextButton.enabled = true;
    }
    else
    {
        _resultLabel.text = @"Wrong  - Press NEXT";
        _nextButton.enabled = true;
    }
}


-(void) setNext
{
    random =  arc4random()%dataArray.count;
    _resultLabel.text = @"You are still thinking... Choose Any Option";
    
    NSDictionary * first = [dataArray objectAtIndex:random];
    
    _pictureView.image = [UIImage imageNamed:[first valueForKey:@"image"]];
    [_option1Button setTitle:[first valueForKey:@"option1"] forState:UIControlStateNormal];
    [_option2Button setTitle:[first valueForKey:@"option2"] forState:UIControlStateNormal];
    [_option3Button setTitle:[first valueForKey:@"option3"] forState:UIControlStateNormal];
    [_option4Button setTitle:[first valueForKey:@"option4"] forState:UIControlStateNormal];
    
    _option1Button.enabled = true;
    _option2Button.enabled = true;
    _option3Button.enabled = true;
    _option4Button.enabled = true;
    _nextButton.enabled = false;
    
}

-(void) setFirstTime
{
    random =  arc4random()%dataArray.count;
    _resultLabel.text = @"You are still thinking... Choose Any Option";
    
    NSDictionary * first = [dataArray objectAtIndex:random];
    
    _pictureView.image = [UIImage imageNamed:[first valueForKey:@"image"]];
    [_option1Button setTitle:[first valueForKey:@"option1"] forState:UIControlStateNormal];
    [_option2Button setTitle:[first valueForKey:@"option2"] forState:UIControlStateNormal];
    [_option3Button setTitle:[first valueForKey:@"option3"] forState:UIControlStateNormal];
    [_option4Button setTitle:[first valueForKey:@"option4"] forState:UIControlStateNormal];
    
    _option1Button.enabled = true;
    _option2Button.enabled = true;
    _option3Button.enabled = true;
    _option4Button.enabled = true;
    _nextButton.enabled = false;
    
}


-(void) setCountries
{
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"belgium.png" forKey:@"image"];
    [data setValue:@"Armenia" forKey:@"option1"];
    [data setValue:@"United States" forKey:@"option2"];
    [data setValue:@"Bahrain" forKey:@"option3"];
    [data setValue:@"Belgium" forKey:@"option4"];
    [data setValue:@"Belgium" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"algeria.png" forKey:@"image"];
    [data setValue:@"Belgium" forKey:@"option1"];
    [data setValue:@"Armenia" forKey:@"option2"];
    [data setValue:@"Algeria" forKey:@"option3"];
    [data setValue:@"Austria" forKey:@"option4"];
    [data setValue:@"Algeria" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"argentina.jpeg" forKey:@"image"];
    [data setValue:@"Belgium" forKey:@"option1"];
    [data setValue:@"Argentina" forKey:@"option2"];
    [data setValue:@"Algeria" forKey:@"option3"];
    [data setValue:@"Australia" forKey:@"option4"];
    [data setValue:@"Argentina" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"azerbaijan.jpeg" forKey:@"image"];
    [data setValue:@"Azerbaijan" forKey:@"option1"];
    [data setValue:@"Armenia" forKey:@"option2"];
    [data setValue:@"Bahrain" forKey:@"option3"];
    [data setValue:@"Belgium" forKey:@"option4"];
    [data setValue:@"Azerbaijan" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"belize.jpg" forKey:@"image"];
    [data setValue:@"Belgium" forKey:@"option1"];
    [data setValue:@"Armenia" forKey:@"option2"];
    [data setValue:@"Algeria" forKey:@"option3"];
    [data setValue:@"Belize" forKey:@"option4"];
    [data setValue:@"Belize" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"bhutan.jpeg" forKey:@"image"];
    [data setValue:@"Bhutan" forKey:@"option1"];
    [data setValue:@"Argentina" forKey:@"option2"];
    [data setValue:@"Algeria" forKey:@"option3"];
    [data setValue:@"Australia" forKey:@"option4"];
    [data setValue:@"Bhutan" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Brunei.jpg" forKey:@"image"];
    [data setValue:@"Belgium" forKey:@"option1"];
    [data setValue:@"Brunei" forKey:@"option2"];
    [data setValue:@"Algeria" forKey:@"option3"];
    [data setValue:@"Belize" forKey:@"option4"];
    [data setValue:@"Brunei" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Bolivia.jpeg" forKey:@"image"];
    [data setValue:@"Bhutan" forKey:@"option1"];
    [data setValue:@"Argentina" forKey:@"option2"];
    [data setValue:@"Bolivia" forKey:@"option3"];
    [data setValue:@"Australia" forKey:@"option4"];
    [data setValue:@"Bolivia" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Italy.jpeg" forKey:@"image"];
    [data setValue:@"Italy" forKey:@"option1"];
    [data setValue:@"Brunei" forKey:@"option2"];
    [data setValue:@"Algeria" forKey:@"option3"];
    [data setValue:@"Belize" forKey:@"option4"];
    [data setValue:@"Italy" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Haiti.jpeg" forKey:@"image"];
    [data setValue:@"Bhutan" forKey:@"option1"];
    [data setValue:@"Haiti" forKey:@"option2"];
    [data setValue:@"Bolivia" forKey:@"option3"];
    [data setValue:@"Australia" forKey:@"option4"];
    [data setValue:@"Haiti" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Norway.jpg" forKey:@"image"];
    [data setValue:@"Bhutan" forKey:@"option1"];
    [data setValue:@"Argentina" forKey:@"option2"];
    [data setValue:@"Bolivia" forKey:@"option3"];
    [data setValue:@"Norway" forKey:@"option4"];
    [data setValue:@"Norway" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Nigeria.jpg" forKey:@"image"];
    [data setValue:@"Nigeria" forKey:@"option1"];
    [data setValue:@"Brunei" forKey:@"option2"];
    [data setValue:@"Algeria" forKey:@"option3"];
    [data setValue:@"Belize" forKey:@"option4"];
    [data setValue:@"Nigeria" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Singapore.jpeg" forKey:@"image"];
    [data setValue:@"Bhutan" forKey:@"option1"];
    [data setValue:@"Haiti" forKey:@"option2"];
    [data setValue:@"Singapore" forKey:@"option3"];
    [data setValue:@"Australia" forKey:@"option4"];
    [data setValue:@"Singapore" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Vanuatu.jpeg" forKey:@"image"];
    [data setValue:@"Nigeria" forKey:@"option1"];
    [data setValue:@"Vanuatu" forKey:@"option2"];
    [data setValue:@"Algeria" forKey:@"option3"];
    [data setValue:@"Belize" forKey:@"option4"];
    [data setValue:@"Vanuatu" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Tuvalu.jpg" forKey:@"image"];
    [data setValue:@"Bhutan" forKey:@"option1"];
    [data setValue:@"Haiti" forKey:@"option2"];
    [data setValue:@"Singapore" forKey:@"option3"];
    [data setValue:@"Tuvalu" forKey:@"option4"];
    [data setValue:@"Tuvalu" forKey:@"answer"];
    [dataArray addObject:data];
    
}

-(void) setCities
{
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Tianjin.jpg" forKey:@"image"];
    [data setValue:@"Moscow" forKey:@"option1"];
    [data setValue:@"Tianjin" forKey:@"option2"];
    [data setValue:@"Manila" forKey:@"option3"];
    [data setValue:@"Tokyo" forKey:@"option4"];
    [data setValue:@"Tianjin" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Manila.jpg" forKey:@"image"];
    [data setValue:@"Moscow" forKey:@"option1"];
    [data setValue:@"Tianjin" forKey:@"option2"];
    [data setValue:@"Manila" forKey:@"option3"];
    [data setValue:@"Tokyo" forKey:@"option4"];
    [data setValue:@"Manila" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Moscow.jpg" forKey:@"image"];
    [data setValue:@"Tokyo" forKey:@"option1"];
    [data setValue:@"Tianjin" forKey:@"option2"];
    [data setValue:@"Manila" forKey:@"option3"];
    [data setValue:@"Moscow" forKey:@"option4"];
    [data setValue:@"Moscow" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Tokyo.jpg" forKey:@"image"];
    [data setValue:@"Moscow" forKey:@"option1"];
    [data setValue:@"Tianjin" forKey:@"option2"];
    [data setValue:@"Manila" forKey:@"option3"];
    [data setValue:@"Tokyo" forKey:@"option4"];
    [data setValue:@"Tokyo" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Istanbul.jpg" forKey:@"image"];
    [data setValue:@"Tokyo" forKey:@"option1"];
    [data setValue:@"Istanbul" forKey:@"option2"];
    [data setValue:@"Manila" forKey:@"option3"];
    [data setValue:@"Moscow" forKey:@"option4"];
    [data setValue:@"Istanbul" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Karachi.jpg" forKey:@"image"];
    [data setValue:@"Moscow" forKey:@"option1"];
    [data setValue:@"Tianjin" forKey:@"option2"];
    [data setValue:@"Karachi" forKey:@"option3"];
    [data setValue:@"Tokyo" forKey:@"option4"];
    [data setValue:@"Karachi" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Beijing.jpg" forKey:@"image"];
    [data setValue:@"Tokyo" forKey:@"option1"];
    [data setValue:@"Beijing" forKey:@"option2"];
    [data setValue:@"Manila" forKey:@"option3"];
    [data setValue:@"Moscow" forKey:@"option4"];
    [data setValue:@"Beijing" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Shanghai.jpg" forKey:@"image"];
    [data setValue:@"Moscow" forKey:@"option1"];
    [data setValue:@"Tianjin" forKey:@"option2"];
    [data setValue:@"Shanghai" forKey:@"option3"];
    [data setValue:@"Tokyo" forKey:@"option4"];
    [data setValue:@"Shanghai" forKey:@"answer"];
    [dataArray addObject:data];
}

@end
