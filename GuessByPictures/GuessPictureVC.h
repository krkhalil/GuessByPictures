//
//  GuessPictureVC.h
//  GuessByPictures
//
//  Created by Macbook on 18/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GuessPictureVC : UIViewController

@property NSString * type;





@property (weak, nonatomic) IBOutlet UIImageView *pictureView;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (weak, nonatomic) IBOutlet UIButton *nextButton;
- (IBAction)nextButtonTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *option1Button;
- (IBAction)option1ButtonTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *option2Button;
- (IBAction)option2ButtonTouched:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *option3Button;
- (IBAction)option3ButtonTouched:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *option4Button;
- (IBAction)option4ButtonTouched:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

@end

NS_ASSUME_NONNULL_END
