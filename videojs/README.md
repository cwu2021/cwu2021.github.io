countUp.js 是純粹的數字滾動特效，沒有實際的計數功能，只是朝向指定的數字快速滾動而已。資料本身是一套固定的json，這是TVBS自行產生的而非中選會的資料結構。用靜態的網頁概念來說，其實就是一套固定的資料，後台每5秒產生一個同樣的json覆蓋掉原本的json，然後網頁自動刷新選票表格給讀者看。
https://news.tvbs.com.tw/events/election20220109/json/final_data.json

主要的功能與樣式是這兩支，從原本網址html與css程式註解來看，應該都是靠程式設計師，而非Adobe Dreamweaver這類網站設計軟體產生。

https://news.tvbs.com.tw/events/election20220109/js/election20220109.js
https://news.tvbs.com.tw/events/election20220109/css/election20220109.css

在Chrome DevTools看這用了countUp.js的計數特效 (https://neohsuxoops.blogspot.com/2018/04/jscountupjs.html) 。類似這樣的需求重點不是資料視覺化，而比較偏向 front end development，屬於javascript/css/html這部分... https://news.tvbs.com.tw/events/election20220109
