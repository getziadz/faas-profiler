#!/bin/bash

SET_VALUE=$1

sudo bash -c "echo ${SET_VALUE} > /proc/sys/kernel/nmi_watchdog"
sync
