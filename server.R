#Primer Semestre
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {
   
  output$mayo<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_Mayo[y,y], digits=4))
    
  })
  
  output$mayo2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_Mayo[y,y], digits=4))
    
  })
  
  output$confidencemayo<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_Mayo[x,y]/a_matrix_Mayo[x,x], digits=4))
  })
  
  output$liftmayo<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_Mayo[x,y], digits=4)/(round(a_matrix_Mayo[x,x], digits=4)*round(a_matrix_Mayo[y,y], digits=4)), digits=4))
  })
  
  output$tablanamecat1mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1mayo<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
  })
  
  output$tablanamecat2mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2mayo<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tablanamecat3mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[3], digits=4))
  })
  
  output$tablanamecat4mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:4){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tablaprobcat4mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    paste(round(t[4], digits=4))
  })
  
  output$tablanamecat5mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tablaprobcat5mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste(round(t[5], digits=4))
  })
  
  output$tabla1namecat1mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    
    paste( round(t[1], digits=4))
  })
  
  output$tabla1namecat2mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    
    paste( round(t[2], digits=4))
  })
  
  output$tabla1namecat3mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste(round(t[3], digits=4))
  })
  
  output$tabla1namecat4mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:4){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tabla1probcat4mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    
    paste(round(t[4], digits=4))
  })
  
  output$tabla1namecat5mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tabla1probcat5mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    
    paste(round(t[5], digits=4))
  })
})


#Mayo
catg_Mayo<-data.frame(Mayo$CATEGORIA1, Mayo$Categoriaf3,
                      Mayo$SLSEQ, Mayo$TICKET)

catg_sin_rep_Mayo<-unique(catg_Mayo)




