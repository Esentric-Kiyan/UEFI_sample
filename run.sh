#!/bin/bash

# Copy all .efi files to the destination folder
find Build/UefiLessonsPkg/RELEASE_GCC5/X64/ -name "*.efi" -exec cp {} ~/UEFI_disk/ \;
#cp ./Build/UefiLessonsPkg/RELEASE_GCC5/X64/SimplestApp.efi ~/UEFI_disk/

# Run QEMU with the specified firmware and disk
qemu-system-x86_64 -drive if=pflash,format=raw,file=Build/OvmfX64/RELEASE_GCC5/FV/OVMF.fd \
                   -drive format=raw,file=fat:rw:~/UEFI_disk \
                   -net none
