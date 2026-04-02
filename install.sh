# SPDX-FileCopyrightText: 2018 Michail Vourlakos <mvourlakos@gmail.com>
# SPDX-License-Identifier: GPL-2.0-or-later
set -eu

cmake -S . -B build -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -Wnodev
cmake --build build -j"$(nproc)"
sudo cmake --install build
