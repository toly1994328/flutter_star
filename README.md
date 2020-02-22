
####  一、描述



```
[1] . 可定义星星的进度情况
[1] . 可定义星星的角数、颜色、大小
```

##### 配置Star类字段

 名称 | 类型 | 功能 | 备注
---|--- |--- |---
progress | double | 填充的进度 | [0,1] 
num | int | 星星的角数 | 大于3
fat | double | 星星的胖瘦 | （0,1]
emptyColor | Color | 星星的色 | -
fillColor | Color | 星星的填充色 | -
size | double | 星星的大小 | -


---

#### 二、展示

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

##### 附赠显示星星评分

```y
StarScore(
  score: 4.8,
  star: Star(
      fillColor: Colors.tealAccent,
      emptyColor: Colors.grey.withAlpha(88)),
)
```


![](https://user-gold-cdn.xitu.io/2020/2/22/1706c7a34645c3ca?w=618&h=216&f=png&s=39905)