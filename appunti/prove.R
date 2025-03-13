is.double(vector_1[2])
is.character(vector_1[2])

vecor_1[3]
vector_1[1]

vector_2 = c("ciao", "yea", "si")
list_1 = list(
  vector_1,
  vector_2
)
print(list_1)

str(list_1)
str(vec_1)




matrix_1 = matrix(c(1,2,3,4,5,6), ncol = 2)
print(matrix_1)

matrix_2 = matrix(c(1,2,3,4,5,6), ncol = 3)
print(matrix_2)
matrix_3 = matrix(c(2,4,6,8,10,12), ncol=3, byrow = TRUE)

matrix_4 = matrix(c(1,3,5,7,9,11), ncol=3)
print(matrix_4)

matrix_4[2,1]
matrix_4[1,3]

colnames(matrix_4)= c("colonna1", "colonna2","colonna3")
rownames(matrix_4)= c("riga1", "riga2")
print(matrix_4)

frame_1 = data.frame(
  sample = c("sample1", "sample2", "sample3"),
  measure = c(123, 234, 345)
  
)

frame_!
frame_1
frame_1
rownames(frame_1)


rownames(frame_1) <- "sample"
rownames(frame_1) <-frame_1$sample
frame_1

frame_3 = data.frame(
  sballo = c("ciao", "si", "yea"),
  sbillo = c(222,333,444)
  )
rownames(frame_3) <- frame_3$sballo
frame_3
rownames(frame_3)<- frame_3$sbillo
frame_3

rownames(frame_3) <- c("caso1", "caso2", "caso3")
frame_3
frame_3["caso1"]
colnames(frame_3)<-c("col1", "col2")

frame_3["col1"]
str("col1")
str("col2")
frame_3[["col1"]]
frame_3[["col3"]]
is.numeric("col3")


library(tidyverse)


tib_a<- as_tibble(frame_3)
tib_a

tib_b = tibble(
  sample = c('sam1', 'sam2', 'sam3', 'sam4'),
  measure = c(123, 234, 345, 456),
  category = c('good', 'good', 'bad', 'bad')
)
tib_b











