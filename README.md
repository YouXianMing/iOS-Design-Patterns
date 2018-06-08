# iOS-DesignPatterns

### MementoPattern

> 备忘录设计模式的完整实现

![demo.gif](http://images2015.cnblogs.com/blog/607542/201509/607542-20150911211147387-467686442.gif)

* 在不破坏封装的情况下，捕获一个对象的内部状态，并在该对象之外保存这个状态，这样以后就可以将该对象恢复到原先保存的状态
* 本人已经将创建状态与恢复状态的逻辑抽象成了协议，并配合备忘录中心一起使用


### SingletonPattern

> [严格单例模式的完整实现](http://www.cnblogs.com/YouXianMing/p/4709209.html)

![demo.png](http://images0.cnblogs.com/blog2015/607542/201508/062107342681020.png)

* 单例模式人人用过,严格的单例模式很少有人用过
* 严格的单例模式指的是无法通过常规的 alloc init 方法来生成对象,派生出来的子类也不能产生出对象,而只能通过单例的方法获取到对象


### FlyweightPattern

> 享元设计模式的完整实现

![demo.png](http://images2015.cnblogs.com/blog/607542/201510/607542-20151027172216122-262635664.png)

* 享元模式使用共享物件，用来尽可能减少内存使用量以及分享资讯给尽可能多的相似物件；它适合用于只是因重复而导致使用无法令人接受的大量内存的大量物件。通常物件中的部分状态是可以分享。常见做法是把它们放在外部数据结构，当需要使用时再将它们传递给享元。


### ChainOfResponsibilityPattern

> 责任链设计模式的完整实现

![demo.png](http://images2015.cnblogs.com/blog/607542/201510/607542-20151027145216575-700989924.png)

* 在责任链模式里，很多对象由每一个对象对其下家的引用而连接起来形成一条链。请求在这个链上传递，直到链上的某一个对象决定处理此请求。发出这个请求的客户端并不知道链上的哪一个对象最终处理这个请求，这使得系统可以在不影响客户端的情况下动态地重新组织和分配责任。


### VisitorPattern

> 访问者设计模式的完整实现

![demo.png](http://images2015.cnblogs.com/blog/607542/201510/607542-20151027105704513-2073306262.png)

* 表示一个作用于某对象结构中的各元素的操作，它使你可以在不改变各元素类的前提下定义作用于这些元素的新操作。


### IteratorPattern

> 迭代器设计模式的完整实现

![demo.png](http://images2015.cnblogs.com/blog/607542/201510/607542-20151026143404825-134177288.png)

* 提供一种方法顺序访问一个聚合对象中的各种元素，而又不暴露该对象的内部表示。 


### CompositePattern

> 组合设计模式的完整实现

![demo.png](http://images2015.cnblogs.com/blog/607542/201510/607542-20151017215057132-320922577.png)

* 将对象组合成树形结构以表示“部分-整体”的层次结构，组合模式使得用户对单个对象和组合对象的使用具有一致性。掌握组合模式的重点是要理解清楚 “部分/整体” 还有 ”单个对象“ 与 "组合对象" 的含义。


### CommandPattern

> 命令设计模式的完整实现

![demo.png](http://images2015.cnblogs.com/blog/607542/201510/607542-20151017215057132-320922577.png)

* 命令对象封装了如何对目标执行指令的信息，因此客户端或调用者不必了解目标的任何细节，却仍可以对他执行任何已有的操作。通过把请求封装成对象，客户端可以把它参数化并置入队列或日志中，也能够支持可撤销操作。命令对象将一个或多个动作绑定到特定的接收器。命令模式消除了作为对象的动作和执行它的接收器之间的绑定。


### DecoratorPattern

> [装饰设计模式的简单实现](http://www.cnblogs.com/YouXianMing/p/4693606.html)

![demo.png](http://images0.cnblogs.com/blog2015/607542/201508/010831531896443.png)

* cocoa框架本身实现了装饰模式(category的方式实现了装饰模式)
* 装饰模式指的是动态的给一个对象添加一些额外的职责,相对于继承子类来说,装饰模式更加灵活
 

### ProxyPattern

> [代理设计模式的完整实现](http://www.cnblogs.com/YouXianMing/p/4703259.html)

![demo.png](http://images0.cnblogs.com/blog2015/607542/201508/042146434233445.png)

* 代理模式大家都用过,但用抽象基类NSProxy实现代理估计鲜有人用
* 本人用NSProxy实现了代理模式,对于理解消息转发机制有点帮助


### PrototypePattern

> [原型设计模式的完整实现](http://www.cnblogs.com/YouXianMing/p/4685934.html)

![demo.gif](http://images0.cnblogs.com/blog2015/607542/201507/291427476429863.png)

* 原型模式指的是从一个已有的对象复制并创建出新的对象
* 当一个类的实例之间存在差异,而这些差异仅是状态的若干组合,复制原型要比手工实例化更加方便
* 当一个类并不容易创建(比如有着复杂的组合对象),且复制已有的组合对象要比对副本修改更加容易,此时,可以考虑使用原型模式


### BridgePattern

> [桥接设计模式的完整实现](http://www.cnblogs.com/YouXianMing/p/4681186.html)

![demo.gif](http://images0.cnblogs.com/blog2015/607542/201507/272035487505701.png)


### AdapterPattern

> [适配器设计模式的完整实现](http://www.cnblogs.com/YouXianMing/p/4676508.html)

![demo1.png](http://images0.cnblogs.com/blog2015/607542/201507/252001541404482.png)
![demo2.png](http://images0.cnblogs.com/blog2015/607542/201507/252002007966847.png)

* 为了让客户端尽可能的通用,我们使用适配器模式来隔离客户端与外部参数的联系,只让客户端与适配器通信.
* 本教程实现了适配器模式的类适配器与对象适配器两种模式,各有优缺点.
* 如果对面向对象基本原理以及设计模式基本原理不熟悉,本教程会变得难以理解.


### StrategyPattern

> [策略设计模式的完整实现](http://www.cnblogs.com/YouXianMing/p/4677129.html)

![demo.gif](http://images0.cnblogs.com/blog2015/607542/201507/260857001701868.gif)

* 把解决相同问题的算法抽象成策略(相同问题指的是输入参数相同,但根据算法不同输出参数会有差异)
* 策略被封装在对象之中(是对象内容的一部分),策略改变的是对象的内容.如果从外部扩展了对象的行为,就不叫策略模式,而是装饰模式.
* 策略模式可以简化复杂的判断逻辑(if - else)
* 如果对面向对象基本原理以及设计模式基本原理不熟悉,本教程会变得难以理解.


### AbstractFactoryPattern

> [抽象工厂设计模式的完整实现](http://www.cnblogs.com/YouXianMing/p/4695045.html)

![demo.png](http://images0.cnblogs.com/blog2015/607542/201508/020701071573651.png)

* 抽象工厂指的是提供一个创建一系列相关或者相互依赖对象的接口,而无需指定它们具体的类
* 如果多个类有相同的行为,但实际实现不同,则可能需要某种抽象类型作为其父类被继承,抽象类型定义了所有相关具体类将共有的共同行为


### FactoryPattern

> [简单工厂设计模式的完整实现](http://www.cnblogs.com/YouXianMing/p/4690397.html)

![demo.png](http://images0.cnblogs.com/blog2015/607542/201507/301932316579408.png)

* 工厂类以及其实例化出来的子类都不是抽象类,所以称之为简单工厂(制造者与产品都是具体的实现类)
* 简单工厂灵活性较差,但其简单直白的特性,适用于层级结构简单的场景


### BuilderPattern

> [生成器设计模式的完整实现](http://www.cnblogs.com/YouXianMing/p/4740407.html)

![demo.png](http://images0.cnblogs.com/blog2015/607542/201508/181931103314156.png)

* 生成器模式可以理解为零部件组装工厂,与工厂方法是非常相似的!


### ObserverPattern

> [观察者设计模式中通知订阅功能部分的完整实现](http://www.cnblogs.com/YouXianMing/p/4693270.html)

![demo.png](http://images0.cnblogs.com/blog2015/607542/201507/312150005019987.png)

* cocoa框架本身实现了观察者模式(通知中心以及KVO)
* 本人所写的例子,实现了通知中心,其特殊的地方在于,不用移除订阅了通知的对象


### FacadePattern

> [外观设计模式的完整实现](http://www.cnblogs.com/YouXianMing/p/4684233.html)

![demo.jpg](http://images0.cnblogs.com/blog2015/607542/201507/282000361105771.jpg)

* 当客服端需要使用一个复杂的子系统(子系统之间关系错综复杂),但又不想和他们扯上关系时,我们需要单独的写出一个类来与子系统交互,隔离客户端与子系统之间的联系,客户端只与这个单独写出来的类交互
* 外观模式实质为为系统中的一组接口提供一个统一的接口,外观定义了一个高层接口,让子系统易于使用


### StatePattern

> 设计模式中的状态模式示例


### MediatorPattern

> 中介者设计模式的完整实现

![demo.png](http://images2015.cnblogs.com/blog/607542/201510/607542-20151026163027404-1425337260.png)

* 用一个中介对象来封装一系列的对象交互。中介者使各对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。


### TemplatePattern

> 模板设计模式的完整实现
