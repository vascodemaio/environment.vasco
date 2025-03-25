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

tib_b %>%
  mutate(sample = gsub('sam', 'sample', sample))

tib_b %>%
  group_by(category)

tib_b

tib_b %>%
  group_by(category) %>%
  mutate(members = n())

tib_b %>%
  group_by(category) %>%
  summarise(members = n())

write_tsv(tib_b, file = "test_tibble.tsv")
tib_copy <- read_tsv("test_tibble.tsv")
tib_copy

tib_copy%>%
  group_by(category) %>%

  tib_copy

for(number in tib_b$measure){
  res = number * 2
  print (res)
}

tib_d = tibble(
  campione = c("cam1", "cam2", "cam3"),
  misura = c(333, 444, 555),
  bono = c("se", "nah", "nah")
)

tib_d

tib_d %>% 
  group_by(campione) %>% 
  summarise(campione = n())
tib_d



tib_d %>% 
  group_by(campione) %>% 
  mutate(members = n())



tib_e = tibble(
  nome = c ("sam1", "sam2", "sam3"),
  valore = c(333, 444, 555),
  valido = c("si", "no", "no")
)


tib_e%>% 
  group_by(valido)

tib_e%>% 
  group_by(valido) %>% 
  summarise(membrivalido = n())

for(number in tib_e$valore){
  res = number * 2
  print(res)
}







tib_s = tibble(
  unom = c("unos", "dos", "tres"),
  uvalor = c(45, 56, 67),
  avalid = c("se", "na", "se")
)


tib_e %>% 
  group_by(avalid)
(
library(tidyverse)


for(numeros in tib_s$uvalor){
  yea  = numeros *2
  print(yea)
}


moltiplicax <- function(x){
  vettoren = vector()
  for(val in x){
    new = val*3
    vettoren = c(vettoren, new)
  }
  return(val)
}

increase <- function(x){
  # create an empty vector
  newvector <<- vector()
  # loop over the input
  for (val in x){
    new = val *3
    # append the value into new vector
    newvector <<- c(newvector, new)
  }
  # return as result this new vector
  return(newvector)
}

ciola = c(1,2,3,4)

ciola %>% 
  moltiplicax

newciola = moltiplicax(ciola)

nnamo <- function(x){
  nvettore <<- vector()
  for(val in x){
    new = val * 3
    nvettore <<- c(nvettore, new)
  }
  return(nvettore)
}
ciolina = c(2,3,4,5)
newciolina = nnamo(ciolina)



aggiungi <- function(x){
  vetore <<- vector()
  for(val in x){
    new = val + 5 - 3
    vetore = c(vetore, new)
  }
  return(vetore)
}


agciolina = ciolina %>% 
  aggiungi()

aumentos = function(x){
  new = x+3
  return(new)
}

gio = c(1,3,5,7)

giogio = lapply(gio, aumentos)




lista = list(
  a = c(1,2,3),
  b = c("a", "b", "c"),
  c = c(3,4,5)
)

vectore <- unlist (lista)
vectore


listas = list(
  a = c(1,2,3,4),
  b = c(3,4,5,6),
  c = c(4,5,6,7)
  
)

listas[1]



mean3 = lapply (listas, mean)

for(val in listas){
  new = mean(val)
  print (new)
}
i = c(1:3)
for(val in cio){
  mean2 = mean(listas[val])
  print(mean2)
for (val in cio){
  print(val)
}  
  
print(i)
cio = c(1:3)
print (cio)


for(val in cio){
  mean2 = mean(listas[val])
  print(mean2)
2

mean2
mean1


##lez5

library(tidyverse)

dataplot = measurements %>% 
  pivot_longer(
    cols = c(time01, time02, time03),
    names_to = "timepoint",
    values_to = "value"
  )

dataplot

ggplot(dataplot, aes(x=timepoint, y=value, colour=sample))+
  geom_point()+
  geom_smooth()

dataplot$time <- as.numeric(factor(dataplot$timepoint))

ggplot(dataplot, aes(x=timepoint, y=value, colour=sample))+
  geom_point()+
  geom_smooth()+
  facet_wrap(sample~., ncol = 2)

set.seed(345)
samplesize = 10  
pop_mean = 5
pop_variance = 4

norm_dists <- replicate(10000, rnorm(samplesize, mean = pop_mean, sd = sqrt(pop_variance)))

chi_stat <- function(variance){
  stat = ((samplesize-1)*variance)/pop_variance
  return(stat)
}

variances <- apply(norm_dists, 2, var)
chisquares <- unlist(lapply(variances, chi_stat))
hist(chisquares, main = "Distribution of Chi Square", xlab = "Chi Square value", freq = FALSE)





yeaa = rnorm(1000, 5, 1)

hist(yeaa, main ="a caso", xlab = "bella li", freq = FALSE)
hist(rnorm(100))


hist(rnorm(1000))
curve(dnorm(x, mean = 0, sd = 1), add = TRUE, col = "blue", lwd = 2)

x = rnorm(1000, mean = 5, sd =1)
hist(x)
curve(dnorm(x, mean = mean(x), sd= sd(x)), add=TRUE, col = "red", lwd = 3 )





