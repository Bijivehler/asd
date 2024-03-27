#!/bin/bash

# Fungsi untuk menjalankan tugas pada jam yang ditentukan
execute_task() {
    local current_hour=$(TZ='Asia/Jakarta' date +'%H')
    local current_minute=$(TZ='Asia/Jakarta' date +'%M')

    case "$current_hour:$current_minute" in
        "00:15")
            # Task pada jam 00:15
            gh workflow run A1
            ;;
        "00:50")
            # Task pada jam 00:50
            gh workflow run A2
            ;;
        "01:30")
            # Task pada jam 01:30
            gh workflow run A3
            ;;
        "02:30")
            # Task pada jam 02:30
            gh workflow run A4
            ;;
        "03:30")
            # Task pada jam 03:30
            gh workflow run A5
            ;;
        "04:30")
            # Task pada jam 04:30
            gh workflow run A6
            ;;
        "10:30")
            # Task pada jam 10:30
            gh workflow run A7
            ;;
        "11:06")
            # Task pada jam 11:06
            gh workflow run A8
            ;;
        "12:30")
            # Task pada jam 12:30
            gh workflow run A9
            ;;
        "13:20")
            # Task pada jam 13:20
            gh workflow run A10
            ;;
        "14:10")
            # Task pada jam 14:10
            gh workflow run A11
            ;;
        "16:30")
            # Task pada jam 16:30
            gh workflow run A12
            ;;
        "17:50")
            # Task pada jam 17:50
            gh workflow run A13
            ;;
        "19:30")
            # Task pada jam 19:30
            gh workflow run A14
            ;;
        "20:53")
            # Task pada jam 20:53
            gh workflow run A15
            ;;
        "22:20")
            # Task pada jam 22:20
            gh workflow run A16
            ;;
    esac
}

# Loop untuk menjalankan penjadwalan
while true
do
    execute_task
    # Menunggu hingga detik berikutnya
    sleep "$((60 - $(date +%S)))"
done
