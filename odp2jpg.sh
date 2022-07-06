#!/bin/sh

# USAGE:
#  ~/bin/odp2jpg.sh ODP_FILE_PATH OUTPUT_DIR_PATH

# check the number of args
if [ $# -ne 2 ]; then
    echo "ERROR: Please specify two arguments."  1>&2
    echo ""  1>&2
    echo "USAGE: ~/bin/odp2jpg.sh ODP_FILE_PATH OUTPUT_DIR_PATH" 1>&2
    exit 1
fi

# ODP_FILE_PATH
if [ ! -r "${1}" ]; then
    echo "ERROR: ${1} doesn't exist."  1>&2
    echo ""  1>&2
    echo "USAGE: ~/bin/odp2jpg.sh ODP_FILE_PATH OUTPUT_DIR_PATH" 1>&2
    exit 1
fi

# OUTPUT_DIR_PATH
if [ ! -e "${2}" ]; then
    echo "make directory: ${2} ..."  1>&2
    mkdir -p "${2}"
fi

PDF_OUTPUT_DIR=`dirname "${1}"`
ODP_NAME=`basename "${1}" .odp`
PDF_PATH="${PDF_OUTPUT_DIR}/${ODP_NAME}.pdf"

echo "convert to pdf: ${PDF_PATH} ..."  1>&2
soffice --headless --convert-to pdf "${1}" --outdir ${PDF_OUTPUT_DIR}
echo "convert to jpg: ${2}/slide%d.jpg ..."  1>&2
convert -density 400 "${PDF_PATH}" -resize 1280x720 "${2}/slide%d.jpg"