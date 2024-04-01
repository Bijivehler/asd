#!/bin/bash

# Fungsi untuk menjalankan tugas pada jam yang ditentukan
execute_task() {
    local current_hour=$(TZ='Asia/Jakarta' date +'%H')
    local current_minute=$(TZ='Asia/Jakarta' date +'%M')

    case "$current_hour:$current_minute" in
        "23:47")
            # Task pada jam 00:15
            gh workflow run A1
            ;;
        "00:32")
            # Task pada jam 00:50
            gh workflow run A2
            ;;
        "01:32")
            # Task pada jam 01:30
            gh workflow run A3
            ;;
        "02:28")
            # Task pada jam 02:30
            gh workflow run A4
            ;;
        "03:30")
            # Task pada jam 03:30
            gh workflow run A5
            ;;
        "09:33")
            # Task pada jam 04:30
            gh workflow run A6
            ;;
        "10:40")
            # Task pada jam 10:30
            gh workflow run A7
            ;;
        "13:05")
            # Task pada jam 11:06
            gh workflow run A8
            ;;
        "14:15")
            # Task pada jam 12:30
            gh workflow run A9
            ;;
        "16:10")
            # Task pada jam 13:20
            gh workflow run A10
            ;;
        "17:45")
            # Task pada jam 14:10
            gh workflow run A11
            ;;
        "19:30")
            # Task pada jam 16:30
            gh workflow run A12
            ;;
        "20:54")
            # Task pada jam 17:50
            gh workflow run A13
            ;;
        "22:10")
            # Task pada jam 19:30
            gh workflow run A14
            ;;
        "23:10")
            # Task pada jam 20:53
            gh workflow run A15
            ;;
        "23:20")
            # Task pada jam 22:20
            ls
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
