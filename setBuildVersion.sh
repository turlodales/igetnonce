#!/bin/bash
sed -i '.bak' "s/.*VERSION_COMMIT_COUNT_IGETNONCE.*/#define VERSION_COMMIT_COUNT_IGETNONCE \"$(git rev-list --count HEAD)\"/" ./igetnonce/all_igetnonce.h 2>/dev/null || sed -i "s/.*VERSION_COMMIT_COUNT_IGETNONCE.*/#define VERSION_COMMIT_COUNT_IGETNONCE \"$(git rev-list --count HEAD)\"/" ./igetnonce/all_igetnonce.h 2>/dev/null
sed -i '.bak' "s/.*VERSION_COMMIT_SHA_IGETNONCE.*/#define VERSION_COMMIT_SHA_IGETNONCE \"$(git rev-parse HEAD)\"/" ./igetnonce/all_igetnonce.h 2>/dev/null || sed -i "s/.*VERSION_COMMIT_SHA_IGETNONCE.*/#define VERSION_COMMIT_SHA_IGETNONCE \"$(git rev-parse HEAD)\"/" ./igetnonce/all_igetnonce.h 2>/dev/null
