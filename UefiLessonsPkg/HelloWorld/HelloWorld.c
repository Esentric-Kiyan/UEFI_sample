#include <Library/UefiBootServicesTableLib.h>
#include <Library/UefiLib.h>

EFI_STATUS
EFIAPI
UefiMain (
  IN EFI_HANDLE        ImageHandle,
  IN EFI_SYSTEM_TABLE  *SystemTable
  )
{
    SystemTable->ConOut->OutputString(SystemTable->ConOut, L"Hello World!\r\n");
    gST->ConOut->OutputString(gST->ConOut, L"Hello again!\r\n");
    Print(L"Bye!\r\n");
    return EFI_SUCCESS;
}