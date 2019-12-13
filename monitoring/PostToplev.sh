FAAS_ROOT="/home/gt5/replay/code/faas-profiler-getziadz"

echo "`date`: PostTopLevel.py"

sleep 2
# Re-enable NMI watchdog
$FAAS_ROOT/monitoring/SetNMIWatchdog.sh 1
