#API手册

## 登录部分

```
1.登录
http://libkindle.com:8080/WebSell/LoginServlet?action=login&username=hello&password=666667
2.获取信息(需要登录)
http://libkindle.com:8080/WebSell/LoginServlet?action=get
3.修改信息(需要登录)
3.1不修改密码(不带password参数)
http://libkindle.com:8080/WebSell/LoginServlet?action=change&nickname=0000&telephone=11011011011&email=110@qq.com&icon=123
3.2修改密码(带password参数)
http://libkindle.com:8080/WebSell/LoginServlet?action=change&nickname=0000&password=666667&telephone=11011011011&email=110@qq.com&icon=123
4.退出登录(需要登录)
http://libkindle.com:8080/WebSell/LoginServlet?action=logout
5.注册
http://libkindle.com:8080/WebSell/LoginServlet?action=register&username=a13345&nickname=杀马特6&email=123@qq.com&telephone=12312312312&password=666666
6.找回密码
http://libkindle.com:8080/WebSell/LoginServlet?action=retrieve&username=a12345&email=123@qq.com&telephone=12312312312&newpassword=123123
```

##搜索展示列表

```
1.搜索商店列表
http://libkindle.com:8080/WebSell/SearchServlet?action=store&page=0&sortby=0&search=王
sortby
sortby 0按照用户等级排序 1按照最新上市排序 2按照用户月销量排序
search 可有可无
2.搜索产品列表
http://libkindle.com:8080/WebSell/SearchServlet?action=product&page=0&sortby=1&search=球
sortby 0上市时间 1月销量 2卖家等级 3价格顺序
search 可有可无
3.展示商铺列表
http://libkindle.com:8080/WebSell/SearchServlet?action=list&userid=3&sortby=0
sortby 0月销量 1上市时间 2价格
```

##商品查看管理

```
1.添加商品(需要登录)
http://libkindle.com:8080/WebSell/ProductServlet?action=upload&prodname=铅笔&stoke=100&price=0.8&icon=666&description=lalala
2.更新商品(需要登录)
http://libkindle.com:8080/WebSell/ProductServlet?action=update&prodid=117&prodname=双节棍&stoke=100&price=0.8&icon=666&status=1&description=lalala
3.获取产品信息
http://libkindle.com:8080/WebSell/ProductServlet?prodid=113
4.获取产品评价
http://libkindle.com:8080/WebSell/ProductServlet?action=comment&prodid=113&page=0
```

##订单管理

```
1.加入购物车，增加数量(需要登录)
http://libkindle.com:8080/WebSell/CartServlet?action=incProd&prodid=111
2.移出购物车，减少数量(需要登录)
http://libkindle.com:8080/WebSell/CartServlet?action=decProd&prod=111
3.展示购物车(需要登录)
http://libkindle.com:8080/WebSell/CartServlet?action=listCart&page=0
4.展示订单(需要登录)
http://libkindle.com:8080/WebSell/CartServlet?action=listOrder&page=0
5.用户下单(需要登录)
http://libkindle.com:8080/WebSell/CartServlet?action=pay&address=hit&message=msg&telephone=110&sellerid=3&number=3&prodid0=112&prodid1=113&prodid2=114
6.商家确认(需要登录)
http://libkindle.com:8080/WebSell/CartServlet?action=confirm&orderid=5fecc1715f154a12a78c72887f079a73
7.用户评论(需要登录)
http://libkindle.com:8080/WebSell/CartServlet?action=comment&orderid=5fecc1715f154a12a78c72887f079a73&comment=good
8.取消订单(需要登录)
http://libkindle.com:8080/WebSell/CartServlet?action=cancel&orderid=45742d7a437c4bbca119b090af05dbc6
```

