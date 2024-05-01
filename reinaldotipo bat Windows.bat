@echo off
cls
:menu
cls
color 0a
date /t
echo.

echo computador:  %computername%      ususario: %username%
echo.
echo              menu Tarefas
echo.
eccho ===========================================
echo * 1. Esvaziar a lixeira                     =
echo * 2. Fazer Backup 				 =
echo * 3. Escanear disco local                   =
echo * 4. Painel de controle                     =
echo * 5. Sair                                   =
echo  ============================================

set /p opcao= Escolha uma opcao:
echo-----------------------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ===================================================
echio*            Lixeira Esvaziada                    +
echo ===================================================
pause
goto menu


Opcao2
cls
xcopy /T  /C C:\Users\crodr\Documents\*.* c:|Users\crodr\Desktop
echo =====================================================
echo *             Backup concluido                      *
echo =====================================================
pause
goto menu


:opcao3
cls
echo =======================================================
echo *              Escaneamento de disco                  *
echo =======================================================
chkdsk c:
pause
goto menu


:opcao4
cls
control.exe
pause
goto menu


Opcao5
cls
exit
:oopcao6
echo =========================================================
echo * Opcao invalida ! Escolha outra opcao*******************
echo =========================================================
paue 
goto menu


						

