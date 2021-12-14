#!/bin/sh

# Yes i could edit the autoconfigure script
# But i dont like putting myself through pain.
# so lets just make a stupid shell script

autoconf
./configure --prefix="$VITASDK/arm-vita-eabi" --host=arm-vita-eabi CFLAGS="-O3 -Wl,-q" --enable-pthread=yes
make
make install

# Copy PkgConfig
cp "pkgconfig/ruby-1.8.pc" "$VITASDK/arm-vita-eabi/lib/pkgconfig/ruby-1.8.pc"

# Create include folders
mkdir "$VITASDK/arm-vita-eabi/include/ruby"
cp -r "$VITASDK/arm-vita-eabi/lib/ruby/1.8/arm-eabi/." "$VITASDK/arm-vita-eabi/include/ruby/"
cp -r "$VITASDK/arm-vita-eabi/lib/ruby/1.8/arm-eabi/ruby.h" "$VITASDK/arm-vita-eabi/include/ruby.h"
