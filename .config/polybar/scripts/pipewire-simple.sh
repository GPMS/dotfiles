#!/bin/sh

#getDefaultSink() {
#    defaultSink=$(pactl info | awk -F : '/Default Sink:/{print $2}')
#    description=$(pactl list sinks | sed -n "/${defaultSink}/,/Description/s/^\s*Description: \(.*\)/\1/p")
#    echo "${description}"
#}

#getDefaultSource() {
#    defaultSource=$(pactl info | awk -F : '/Default Source:/{print $2}')
#    description=$(pactl list sources | sed -n "/${defaultSource}/,/Description/s/^\s*Description: \(.*\)/\1/p")
#    echo "${description}"
#}

main() {
    VOLUME=$(pamixer --get-volume-human)
    VOLUME_NUMBER=$(echo $VOLUME | sed 's/%//')
    #SINK=$(getDefaultSink)
    #SOURCE=$(getDefaultSource)

    case $1 in
        "--up")
            pamixer --increase 10
            ;;
        "--down")
            pamixer --decrease 10
            ;;
        "--mute")
            pamixer --toggle-mute
            ;;
        *)
            #echo "Source: ${SOURCE} | Sink: ${VOLUME} ${SINK}"
            if [ $VOLUME = "muted" ]; then
                echo "🔇 |"
            elif [ $VOLUME_NUMBER -gt 50 ]; then
                echo "🔊 ${VOLUME} |"
            elif [ $VOLUME_NUMBER -gt 0 ]; then
                echo "🔉 ${VOLUME} |"
            else
                echo "🔈 ${VOLUME} |"
            fi
    esac
}

main $@
