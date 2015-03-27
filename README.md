# ParallaxTableView
一个带有下拉时差效果的tableView

# 效果图
![demo](http://cl.ly/image/1W3A1r0m3r1D/Screen%20Recording%202015-03-26%20at%2011.28%20%E4%B8%8A%E5%8D%88.gif)
# 如何使用
1. 安装<br>
  下载源码，将`prallaxTable`目录加入到项目中  

2. 初始化`ParallaxTableView`  

        praTbView = [[ParallaxTableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    	praTbView.delegate = self;
    	praTbView.dataSource = self;
    	praTbView.backgroundColor = [UIColor clearColor];
    	praTbView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
	    [praTbView configHeaderViewWithImageName:@"img" height:200. offset:-50 addToView:self.view];

3. 让header随着tableview滚动变化  

  		- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
	    [praTbView modifyHeaderImageOffset:scrollView];
	  	}

# License
  [MIT](http://choosealicense.com/licenses/mit/)
