#!/bin/bash

rm dl.html autodl.html stream.html tools.html
touch dl.html autodl.html stream.html tools.html

for APP in "${INSTALLED[@]}"
do
        CNAME=_CNAME
        CPORT=_CPORT
        CICON=_CICON
        FNAME=$(eval "echo \$$APP$CNAME")
        FPORT=$(eval "echo \$$APP$CPORT")
        FICON=$(eval "echo \$$APP$CICON")

        for KEY in "${dl[@]}"
        do
                if [ "$KEY" == "$APP" ]
                then
                        echo "        <a href=\"http://$LAN:$FPORT\" target=\"_blank\" title=\"$FNAME\" class=\"$FNAME\">" >> files/start_menu/www/dl.html
                        echo "          <i class=\"fa $FICON\"></i>" >> files/start_menu/www/dl.html
                        echo "        </a>" >> files/start_menu/www/dl.html
                fi
        done

        for KEY in "${autodl[@]}"
        do
                if [ "$KEY" == "$APP" ]
                then
                        echo "        <a href=\"http://$LAN:$FPORT\" target=\"_blank\" title=\"$FNAME\" class=\"$FNAME\">" >> files/start_menu/www/autodl.html
                        echo "          <i class=\"fa $FICON\"></i>" >> files/start_menu/www/autodl.html
                        echo "        </a>" >> files/start_menu/www/autodl.html
                fi
        done

        for KEY in "${stream[@]}"
        do
                if [ "$KEY" == "$APP" ]
                then
                        if [ "$APP" == "Eb" ]
                        then
                                echo "        <a href=\"http://$LAN/emby\" target=\"_blank\" title=\"$FNAME\" class=\"$FNAME\">" >> files/start_menu/www/stream.html
                                echo "          <i class=\"fa $FICON\"></i>" >> files/start_menu/www/stream.html
                                echo "        </a>" >> files/start_menu/www/stream.html
                        else
                                echo "        <a href=\"http://$LAN:$FPORT\" target=\"_blank\" title=\"$FNAME\" class=\"$FNAME\">" >> files/start_menu/www/stream.html
                                echo "          <i class=\"fa $FICON\"></i>" >> files/start_menu/www/stream.html
                                echo "        </a>" >> files/start_menu/www/stream.html
                        fi
                fi
        done

        for KEY in "${tool[@]}"
        do
                if [ "$KEY" == "$APP" ]
                then
                        echo "        <a href=\"http://$LAN:$FPORT\" target=\"_blank\" title=\"$FNAME\" class=\"$FNAME\">" >> files/start_menu/www/tools.html
                        echo "          <i class=\"fa $FICON\"></i>" >> files/start_menu/www/tools.html
                        echo "        </a>" >> files/start_menu/www/tools.html
                fi
        done
done 