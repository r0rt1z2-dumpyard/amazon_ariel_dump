#!/bin/bash

cat system/sqfs/container.sqfs.* 2>/dev/null >> system/sqfs/container.sqfs
rm -f system/sqfs/container.sqfs.* 2>/dev/null
cat system/tts/ivona/eng.usa.salli_31536000000/vox_en_us_salli16i-mf.* 2>/dev/null >> system/tts/ivona/eng.usa.salli_31536000000/vox_en_us_salli16i-mf
rm -f system/tts/ivona/eng.usa.salli_31536000000/vox_en_us_salli16i-mf.* 2>/dev/null
