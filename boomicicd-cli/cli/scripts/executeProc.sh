#!/bin/bash

set -a

source $WD/bin/common.sh
source $WD/bin/propertiesCICD.sh

ARGUMENTS=(authToken processName atomName componentId)

inputs "$@"
if [ "$?" -gt 0 ]
then
	exit $?
fi

$WD/bin/executeProcess.sh processName=$processName atomName=$atomName componentId=$componentId
