#!/usr/bin/env bash
for json in */*.json
do
	jq -M -S '.interface.keys |= (sort_by(.specifier.x) | sort_by(.specifier.y))' "${json}" > tmp
	mv -f tmp "${json}"
done
