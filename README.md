# parallaxTableView
# 效果图

# 如何使用
1. 安装
  下载源码，将‘prallaxTable’目录加入到项目中
2. 初始化‘ParallaxTableView’
  ‘praTbView = [[ParallaxTableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    praTbView.delegate = self;
    praTbView.dataSource = self;
    praTbView.backgroundColor = [UIColor clearColor];
    praTbView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    [praTbView configHeaderViewWithImageName:@"img" height:200. offset:-50 addToView:self.view];’
3. 让header随着tableview滚动变化
  '- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [praTbView modifyHeaderImageOffset:scrollView];
  }'

# License
  MIT: [http://choosealicense.com/licenses/mit/]
