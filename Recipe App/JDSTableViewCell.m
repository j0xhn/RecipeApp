//
//  JDSTableViewCell.m
//  Recipe App
//
//  Created by John D. Storey on 5/22/14.
//  Copyright (c) 2014 d. All rights reserved.
//

#import "JDSTableViewCell.h"

@implementation JDSTableViewCell

@synthesize descriptionLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // configure control(s)
        self.descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 10, 300, 30)];
        self.descriptionLabel.textColor = [UIColor blackColor];
        self.descriptionLabel.font = [UIFont fontWithName:@"Arial" size:12.0f];
        
        [self addSubview:self.descriptionLabel];
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
