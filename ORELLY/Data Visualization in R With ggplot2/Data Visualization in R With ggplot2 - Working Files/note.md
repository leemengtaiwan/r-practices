Data Visualization 是將 variables mapping 到 visual encoding。  


## Visualization 用途
- Explortary Data Analysis
    * Find pattern
    * Inspire new questions
- Show story to audience
    * 最重要的是先想好「想要傳達什麼概念」，進而選擇能達到該目的的 encoding，同時盡可能避免 misleading
    * show it clearly
    
## Visual Encoding 常見形式
- Position
- Length
- Area
- Color (飽和度、亮度)
- Angle (Pie chart)
- ...


## 選擇有效的 visual encoding
- Encoding 要符合資料形式，了解不同資料形式的特性選擇適合的 encoding
- 要能幫助讀者閱讀
- 原則
    - 位置為王，長度 > 區域 > 體積
    - 三種資料形式
        - Nominal: discrete, unordered
            - 位置、色調、texture
        - Ordinal: discrete, ordered
            - 位置、亮度、飽和度
        - Quantitative: continuous, ordered
            - 位置、長度、角度、slope
    
要檢驗一個 visualization 是否有效，思考為何作者用該 visual encoding 呈現 variables 而非其他 encoding。


## Color 
原則是不使用超過 7 個顏色、不使用彩虹的顏色刻度。另外要注意[色盲的需求](colorbrewer2.org)。

Color scales 主要有三種，也分別適合用於不同 use cases
- Sequential
    * 同一色調，不同亮度
    * 適合 Quantitative / Ordinal data
- Diverging
    * 同上，適合資料有中間點的時候。
- Qualitative
    * Nominal data 

## ggplot2's Grammar of Graphics
將 statistics graph 分為多個 *layers*，在做 data visualization 的時候不是「喔我要畫 scatter chart」這種一開始就選定 chart type，而是從圖的基本元素往上客製化

一個 ggplot2 plot 的元素（前三個為 minimal）：
- Data
    - Data frame，每個 column 代表一個變數
- Aesthetics
    - 將 Data 對應到 *visual variables* 如 X、Y、顏色
- Geometric Objects (Geoms)
    - Visual elements，如點、線、形狀
- Statistical Transformations (Stats)
    - 轉換資料，通常用於 summary: Distribution、Smoother
    - 通常 work behind scene，但可 override
- Facets
    - 將資料分成多個 small multiples
- Scales
    - 決定 Data 怎麼對應到 aesthetics
    - 通常 work behind scene，但可 override。如： Color Scale、Log transform axis
- Coordinate System (Coord)
    - 決定 data 的座標怎麼對應到 visual 座標
    - 笛卡爾座標、極坐標 etc.

## Tidy Data
ggplot2 預設的資料的格式是 tidy data。而 tidy data 有三個要求：

- 每個 variable 是一 column
- 每個 observation 是一 row

符合以上要求可以使得資料更容易透過程式存取、分析。R 常見的 data wrangling packages:
- dplyr
- tidyr