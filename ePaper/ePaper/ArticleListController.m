//
//  ArticleListController.m
//  ePaper
//
//  Created by Sanjay Dandekar on 19/09/14.
//  Copyright (c) 2014 An Indian. All rights reserved.
//

#import "ArticleListController.h"
#import "ArticleCell.h"
#import "Article.h"
#import "ArticleViewerController.h"

@interface ArticleListController ()
{
    ArticleViewerController* ctrl;
}
@end

@implementation ArticleListController

@synthesize articles = _articles;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.articles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ArticleCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ArticleCell" forIndexPath:indexPath];
    
    Article* art = [self.articles objectAtIndex:indexPath.item];

    // Configure the cell...
    cell.articleTitle.text = art.title;
    cell.articleDetail.text = art.body;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Article* art = [self.articles objectAtIndex:indexPath.item];
    ctrl.imageUrl = art.imageUrl;
    ctrl.title = art.title;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"ShowSingleArticle"])
    {
        ctrl = segue.destinationViewController;
    }
}

@end