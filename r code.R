dataset = read.csv("C:/Users/USER/Documents/Datasets/Developers and Programming languages/user-languages.csv");

#### Set needed variables ####
proglanguages = c("javascript","vanilla", "vanilla.js", "html", "css", "sql", "python", "java", 
                  "bash", "shell", "powershell", "php", "c..", "typescript");
frameworks = c("node", "nodejs", "dotnet", "dotnetcore", "pandas", "react.native", "tensorflow",
               "ansible","cordova");
webframeworks = c("jquery", "react", "angular", "angularjs", "asp", "express",
               "spring","vue", "django", "laravel");
databases = c("mysql", "lite", "mongodb", "redis", "elasticsearch");

dataset_pro = dataset[proglanguages];
dataset_frame =  dataset[frameworks];
dataset_webframe =  dataset[webframeworks];
dataset_databases =  dataset[databases];

totalweight = c();
dataset$user_id = NULL;

#loopingds = dataset_databases;

loopingds = dataset_frame;
for(column in 1:ncol(loopingds)){
  print(sum(loopingds[column]));
  totalweight = c(totalweight, sum(loopingds[column]));
}
#attributes(dataset);

languagesAndTools = attributes(dataset)$names;

dataframe = data.frame(proglanguages, totalweight);
dataframe = data.frame(frameworks, totalweight);
dataframe = data.frame(webframeworks, totalweight);
dataframe = data.frame(databases, totalweight);

barplot(dataframe$totalweight,
        names.arg = dataframe$proglanguages,
        xlab = "programming languages & frameworks",
        ylab = "weights",
        ylim = c(0,2000),
        las = 1);

library(ggplot2);
plot <- ggplot(dataframe, aes(frameworks, totalweight))
plot + geom_bar(stat = "identity")+
  xlab("Frameworks, libraries and tools")+
  ylab("Total weight");

plot <- ggplot(dataframe, aes(proglanguages, totalweight))
plot + geom_bar(stat = "identity")+
  xlab("Programming, scripting or markup language")+
  ylab("Total weight");

plot <- ggplot(dataframe, aes(webframeworks, totalweight))
plot + geom_bar(stat = "identity")+
  xlab("Web framework")+
  ylab("Total weight");

plot <- ggplot(dataframe, aes(proglanguages, totalweight))
plot + geom_bar(stat = "identity")+
  xlab("Programming, scripting or markup language")+
  ylab("Total weight");

plot <- ggplot(dataframe, aes(databases, totalweight))
plot + geom_bar(stat = "identity")+
  xlab("Databases")+
  ylab("Total weight");
#### Analysing JS frameworks ####
js_frameworks = c();

