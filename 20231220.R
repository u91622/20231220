Data = read.table("Example.txt", header = TRUE) #讀取Example.txt，並存成"Data"這個物件(資料表格式)

Color = "red"          #指定顏色

pdf("plot.pdf")      #開啟一個pdf file，路徑為"plot.pdf"
plot(Data, col = Color) #將圖畫到開啟中的pdf file上去
dev.off()            #關掉這個pdf file

Result = lm(Weight~Height, data = Data) #linear regression test
Result
summary(Result)
plot(Data$Height, Data$Weight, pch = 19)
abline(Result)

Data=read.table("Example.txt", header = TRUE)
colnames(Data)    # 列出所有的欄位名稱
colnames(Data)[3] # 列出第一個欄位名稱
Result1 = lm(Data[,"Weight"]~Data[,"Height"])
summary(Result1)