required packages: nmap, sendmail, awk

- copy the bashscript and save as persist.sh, change the host ip in the script
- copy email.txt to the directory where you saved persist.sh
- edit email.txt to make changes to who receives the alert email, subject and the email message
- add the text in /etc/crontab and change the path to where you saved the bashscript
- check if cronjob is running with:
        sudo systemctl status crond
        crontab -e
        crontab -l
- to remove cronjobs run: crontab -r
