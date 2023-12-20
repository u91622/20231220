Data = read.table("Example.txt", header = TRUE) #讀取Example.txt，並存成"Data"這個物件(資料表格式)

Color = "red"          #指定顏色

pdf("plot.pdf")      #開啟一個pdf file，路徑為"plot.pdf"
plot(Data, col = Color) #將圖畫到開啟中的pdf file上去
dev.off()            #關掉這個pdf file