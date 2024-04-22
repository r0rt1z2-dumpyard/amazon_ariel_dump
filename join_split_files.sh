#!/bin/bash

cat system/lib/libslate.so.* 2>/dev/null >> system/lib/libslate.so
rm -f system/lib/libslate.so.* 2>/dev/null
cat system/sqfs/container.sqfs.* 2>/dev/null >> system/sqfs/container.sqfs
rm -f system/sqfs/container.sqfs.* 2>/dev/null
cat system/tts/ivona/eng.usa.salli_170945507000/vox_en_us_salli16i-mf.* 2>/dev/null >> system/tts/ivona/eng.usa.salli_170945507000/vox_en_us_salli16i-mf
rm -f system/tts/ivona/eng.usa.salli_170945507000/vox_en_us_salli16i-mf.* 2>/dev/null
