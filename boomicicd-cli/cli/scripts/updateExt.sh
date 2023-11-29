#!/bin/bash

set -a

source $WD/bin/common.sh
source $WD/bin/propertiesCICD.sh

ARGUMENTS=(authToken componentId packageVersion notes componentType env listenerStatus)

inputs "$@"
if [ "$?" -gt 0 ]
then
	exit $?
fi

$WD/bin/updateExtensions.sh componentId=$componentId packageVersion=$packageVersion componentType=$componentType notes="$notes" env=$env listenerStatus=$listenerStatus
