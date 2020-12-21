party <- data.frame(place =c("outdoors", "outdoors","porch","porch","indoors","indoors"),
                    weather =c("sun", "Rain","sun","Rain","sun","Rain"),
                    p =c(0.4,0.6,0.4,0.6,0.4,0.6),
                    value =c(100,0,90,20,40,50)
)

View(party)

calculate <- rep(0,3)
place <- ""

party_function <- function(party){
  for(i in 1:length(party$value)){
    if(i%%2 == 1){
      new_calculate <-( party$p[i] *party$value[i])+ ( party$p[i+1] *party$value[i+1])
      if(calculate< new_calculate){
        calculate=new_calculate
        place = party$place[i]
      }
      
    }
  }
  print(place)
}



party_function(party)