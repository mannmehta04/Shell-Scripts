#!/bin/bash

awk -F',' '{
    pizzaId = $1
    pizzaName = $2
    pizzaCost = $3

    pizza[pizzaId] = pizzaName

    gstperPizza += pizzaCost * (1 + 10 / 100)
    gstAll[pizzaId] = gstperPizza

    tipperPizza += pizzaCost * (1 + 20 / 100)
    tipAll[pizzaId] = tipperPizza
}
END{
    # printf "Pizza Id\tPizza\tGST\tTip"

    for(p in gstAll){
        printf "%s\t\t %s \t\t %s \t\t %s\n",p,pizza[p],gstAll[p],tipAll[p]
    }
}' myBill.csv