@echo off 
echo MOV to WEBM Batch Converter
echo Created By: MrBoost

for %%i in (*.mov)do echo\Enconding: "%%~nxi" "%%~ni.webm"  &&  (
       ffmpeg -i "%%~fi" -c:v libvpx-vp9 -b:v 0 -crf 15  "%%~dpni.webm" -hide_banner -v error -stats
       ) 