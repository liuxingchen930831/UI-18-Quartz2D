## Quartz2D
- Quartz2D的API是纯C语言的
- 数据类型和函数基本都以CG作为前缀
	- CGContextRef
	- CGPathRef
	- CGContextStrokePath(ctx);
- 一般开发中不用Quartz2D去绘制图形，OC为我们提供了一个绘制图形的对象

## UIBezierPath

- UIBezierPath对象是OC为我们封装好了一些常用的Quartz2DAPI，可以快速上手。
- 不管是Quartz2D 还是 UIBezierPath只要在苹果的平台下绘制图形的过程都是一样的，只不过内部的方法可能帮我们封装好了一下，但是绘制图形的过程我们必须了解
	- 绘制图形的过程：
	> 获取图形上下文 (所谓的上下文个人理解:就是画板，有了画板才能画图形)
	> 创建路径
	> 把路径添加到上下文
	> 渲染上下文 
	
## 绘制图形的方法
- 绘制图形的时候我们需要在 - (void)drawRect:(CGRect)rect方法中执行，该方法会在view 将要显示的时候调用也就是说先调用 -(void)ViewDidload方法在调用该方法
- 需要注意的是，只有在- (void)drawRect:(CGRect)rect方法中才能获取到和view的layer相关联的图形上下文
- -(void)drawRect:(CGRect)rect方法中 传递的rect属性是当前控件的bounds