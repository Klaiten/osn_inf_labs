#!/bin/bash
find_dublicate(){
	arr=("$@")
	dubl="false"

	for a in "${!arr[@]}"; do
		for b in "${!arr[@]}"; do
			if [[ "${arr[$a]}" == "${arr[$b]}" && $a != $b  ]]; then
				echo "Дубликат (${arr[$a]}) i:[$a] и i:[$b]"
				dubl="true"
			fi
		done
	done

if [[ "$dubl" != "true" ]]; then
	echo "Дубликатов нет"
fi
}

find_dublicate "$@"
