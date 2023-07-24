#!/bin/bash

###### http://www.meteochile.gob.cl/PortalDMC-web/index.xhtml => Estaciones en linea

for Estacion in 390043 340045 340093 340115 340066 340031 350028 360047 360011 360045 360019 360046 370036 370067 380063 380013 380029 390028 380018 380032 380033 390029 390006 390015
    do
        for ano in 2018 2019
            do
                for mes in 01 02 03 04 05 06 07 08 09 10 11 12
                    do
                        for dato in Temperatura RadiacionGlobal PresionHumedad AguaCaida Viento
                            do
                                echo "${Estacion}_${ano}${mes}_${dato}.csv.zip"
                                unzip "${Estacion}_${ano}${mes}_${dato}.csv.zip"
                            done
                    done
            done
    done
