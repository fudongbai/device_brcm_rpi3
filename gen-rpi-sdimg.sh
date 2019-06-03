BOARD_DIR="$(dirname $0)"
GENIMAGE_CFG="${BOARD_DIR}/genimage.cfg"
TARGET_OUT="../../../out/target/product/rpi3"
GENIMAGE_TMP="${TARGET_OUT}/.genimage.tmp"

rm -fr "${GENIMAGE_TMP}"

genimage                           \
	--rootpath "${TARGET_OUT}/root"     \
	--tmppath "${GENIMAGE_TMP}"    \
	--inputpath "${TARGET_OUT}"  \
	--outputpath "${TARGET_OUT}" \
	--config "${GENIMAGE_CFG}"

exit $?
