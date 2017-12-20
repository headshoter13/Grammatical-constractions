# Анализ конструкций "без удержу, без умолку, без устали"

## Материалы

[Данные](https://github.com/headshoter13/Grammatical-constractions/tree/master/data)

### Рабочая гипотеза

Конструкции "без удержу, без умолку, без устали" чаще всего встречаются в художественных текстах, а не в каких либо других. На это могут влиять различные факторы: замещение новыми конструкциями, выход из употребления в разговорной речи.
## Работа с данными

### Данные
На самом деле, можно было получить гораздо больше данных. Однако, конструкция "без удержу" употребляется очень редко. В НКРЯ всего 105 фрагментов. Поэтому было взято примерно одинаковое кол-во других конструкций.

"без удержу" -- 105 фрагмента<br>
"без умолку" -- 105 фрагментов<br>
"без устали" -- 135 фрагментов <br>

Данные были скачаны с НКРЯ, а затем немного подогнаны под необходимый формат в Excel. [Ссылка на материалы](https://github.com/headshoter13/Grammatical-constractions/blob/master/data/vse_bez.csv).

### Статистика

```
df <- read.csv("Uderzhy.csv", header = T)
df1 <- read.csv("Umolky.csv", header = T)
df2 <- read.csv("Ustali.csv", header = T)
all_data <- read.csv("vse_bez.csv", header = T)

uderzhu.art <- nrow(df[df$Sphere=='art',])
umolku.art <- nrow(df1[df1$Sphere=='art',])
ustali.art <- nrow(df2[df2$Sphere=='art',])

uderzhu.neart <- nrow(df) - uderzhu.art
umolku.neart <- nrow(df) - umolku.art
ustali.neart <- nrow(df) - ustali.art

#mean_art <- (uderzhu.art + umolku.art + ustali.art) %/% 3
#mean_neart <- (uderzhu.neart + umolku.neart + ustali.neart) %/% 3

constr.uderzhu <- c(art=uderzhu.art, neart=uderzhu.neart)
constr.umolku <- c(art=umolku.art, neart=umolku.neart)
constr.ustali <- c(art=ustali.art, neart=ustali.neart)

df = as.data.frame(rbind(constr.uderzhu, constr.umolku, constr.ustali))
chisq.test(df)
```

Данные для подсчета хи-квадрата:

|           	    | Без удержу | Без умолку | Без Устали |
| --------- 	    | --- 	 | --- 	      | --- 	   |
| Художественный    | 64  	 | 82  	      |    71 	   |
| Не художественный | 41  	 | 23  	      |    34	   |



### Результат

```
Pearson's Chi-squared test

data:  chi
X-squared = 7.3173, df = 2, p-value = 0.02577
```

### Обсуждение результатов

Мы получили значение p-value < 0.05. Это означает, что, действительно, конструкции "без удержу, без умолку, без устали" чаще всего встречаются в художественных текстах, а не в каких либо других.
### Графики
# Общая ситуация.
![Все](https://github.com/headshoter13/Grammatical-constractions/raw/master/graphs/sphere/Rplot%20ALL.png)
# 1."без удержу"
![Без удержу](https://github.com/headshoter13/Grammatical-constractions/raw/master/graphs/sphere/без%20удержу.png)
# 2. "Без умолку"
![Без умолку](https://github.com/headshoter13/Grammatical-constractions/raw/master/graphs/sphere/без%20умолку.png)
# 3. "Без устали"
![Без устали](https://github.com/headshoter13/Grammatical-constractions/raw/master/graphs/sphere/без%20устали.png)

### Корреляция со временем.
# Без умолку
![удержи](https://github.com/headshoter13/Grammatical-constractions/raw/master/graphs/sphere/без%20умолку%20год.png)
Видно, что основная популярность пришлась на 2003-2004 года. А до этого времени и после эта конструкция не была особо популярна.
# Без удержу
![удержу](https://github.com/headshoter13/Grammatical-constractions/raw/master/graphs/sphere/uderzhuuuuu.png)
# Без устали
![устали](https://github.com/headshoter13/Grammatical-constractions/raw/master/graphs/sphere/ustaliiii.png)


