@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 642e1ab1b232481791a767be5375608e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot CPU_3380_Test_behav xil_defaultlib.CPU_3380_Test -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
