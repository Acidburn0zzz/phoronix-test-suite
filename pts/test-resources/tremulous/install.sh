#!/bin/sh

unzip -o tremulous-1.1.0.zip
mv tremulous tremulous_
unzip -o tremulous-benchmark-2.zip

mv tremulous-benchmark.cfg tremulous_/tremulous/base/
mv demos/ tremulous_/tremulous/base/

echo "#!/bin/sh
cd tremulous_/tremulous/
./tremulous.x86 \$@ > \$LOG_FILE 2>&1" > tremulous
chmod +x tremulous
