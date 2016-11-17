//
//  StudentTableViewCell.h
//  ClassRoster
//
//  Created by Erica Winberry on 11/16/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

@import UIKit;

@interface StudentTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *studentName;

@property (weak, nonatomic) IBOutlet UILabel *studentEmail;

@property (weak, nonatomic) IBOutlet UILabel *studentPhone;

@end
