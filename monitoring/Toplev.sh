# This script uses the toplev tool from the pmu-tools toolset to gather certain information.
FAAS_ROOT="/home/gt5/replay/code/faas-profiler-getziadz"

TEST_DURATION=$1
SAMPLING_INTERVAL=$2

echo "`date`: TopLevel.py"


# Disable NMI watchdog to minimize multiplexing in PMU
$FAAS_ROOT/monitoring/SetNMIWatchdog.sh 1

sudo env "PATH=$PATH" toplev.py -x, -l1 -I ${SAMPLING_INTERVAL} -o toplev-mon.out sleep ${TEST_DURATION}
