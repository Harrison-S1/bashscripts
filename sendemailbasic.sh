#!/bin/bash

SMTPFROM=username@gmail.com
SMPTTO=username@gmail.com
SMPTSERVER=smtp.googlemail.com:587
SMTPUSER=username@gmail.com
SMTPPASSWORD="PASSWORD"
MESSAGEBODY="SENDMAIL"
SUBJECT="SENDMAIL"

sendemail -f $SMTPFROM -t $SMPTTO -u $SUBJECT -m $MESSAGEBODY -s $SMPTSERVER -xu $SMTPUSER -xp $SMTPPASSWORD
