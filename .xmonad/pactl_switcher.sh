#!/bin/bash


newSink="$(pactl list short sinks | grep SUSPENDED | awk '{print $1}')"
pactl set-default-sink $newSink
echo $newSink

pactl list short sink-inputs|while read stream; do
    streamId=$(echo $stream|cut '-d ' -f1)
    echo "moving stream $streamId"
    pactl move-sink-input "$streamId" "$newSink"
done
