
#### 零 使用

```
dependencies:
  flutter_star: $lastVersion
```


####  一、描述

> 目标: 使用canvas手工打造，一个完美的星星评分组件。

```
---->[StarScore 星星显示组件]----
[1] 比如显示4.2: 会有5颗星, 前四颗填满，后一刻填充20%
StarScore 为 Stateless组件，仅负责显示的需求

---->[CustomRating 星星评分组件]----
[2] 可指定最大值，也就是显示多少个星星
[3] 点击时会改变状态，进行评分,支持半星评分
[4] 支持评分回调

---->[Star组件]----
[5]. 可定义星星的显示进度情况 0% ~ 100 % 无死角
[6]. 可定义星星的角数
[7]. 可定义星星的颜色、大小
```


---

#### 二 、StarScore

>  分数展示组件

 名称 | 类型 | 功能 | 备注 | 默认
---|--- |--- |---  |---
score | double | 分数 | - | 0
star | Star | 见 `第四点` | 星星属性配置 | Star()
tail | Widget | 尾部的组件 | - | null

```
StarScore(
  score: 4.8,
  star: Star(
      fillColor: Colors.tealAccent,
      emptyColor: Colors.grey.withAlpha(88)),
  tail: Column(
    children: <Widget>[
      Text("综合评分"),
      Text("4.8"),
    ],
  ),
),
```

![](https://user-gold-cdn.xitu.io/2020/2/22/1706c7a34645c3ca?w=618&h=216&f=png&s=39905)


---

#### 三 、CustomRating
> 评分组件

 名称 | 类型 | 功能 | 备注 | 默认
---|--- |--- |---  |---
max | int | 最大星星数 | - | 5
score | double | 分数 | - | 0
star | Star | 见 `第四点` | 星星属性配置 | Star()
onRating | Fluction(double) | 点击回调 | @required | null


##### 1.最简使用

![](https://user-gold-cdn.xitu.io/2020/2/23/1706fd38865f0c70?w=472&h=118&f=gif&s=125659)

```
CustomRating(onRating: (s) {
   print(s);
 }),
```

---

##### 2.可高度定制

![](https://user-gold-cdn.xitu.io/2020/2/23/1706fd61574ad93e?w=472&h=118&f=gif&s=122169)

```
CustomRating(
     max: 6,
     score: 3.0,
     star: Star(
         num: 12,
         fillColor: Colors.orangeAccent,
         fat: 0.6,
         emptyColor: Colors.grey.withAlpha(88)),
    onRating: (s) {
       print(s);
     }),
```

---

#### 四 、Star
> 星星组件 : 高度可定制的配置类

 名称 | 类型 | 功能 | 备注 | 默认
---|--- |--- |---|---
progress | double | 填充的进度 | [0,1]  | 0.0
num | int | 星星的角数 | 大于3 | 5
fat | double | 星星的胖瘦 | （0,1] | 0.5
emptyColor | Color | 星星的色 | - | Colors.grey
fillColor | Color | 星星的填充色 | - | Colors.yellow
size | double | 星星的大小 | - | 20

##### 1. 进度填充:`progress`

![](https://user-gold-cdn.xitu.io/2020/2/22/1706c5b188628693?w=770&h=130&f=png&s=26715)


---

##### 2. 星星的角数:`num`

![](https://user-gold-cdn.xitu.io/2020/2/22/1706c64f3b7a5cbb?w=772&h=120&f=png&s=38641)

---

##### 3. 星星的胖瘦:`fat`

![](https://user-gold-cdn.xitu.io/2020/2/22/1706c66d2cb2beaf?w=772&h=110&f=png&s=29341)


---

##### 4. 星星的颜色:`fillColor和emptyColor`

![](https://user-gold-cdn.xitu.io/2020/2/22/1706c6da364a8d3b?w=630&h=122&f=png&s=24053)

---
