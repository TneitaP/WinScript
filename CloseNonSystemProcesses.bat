tasklist >>pslist.txt
　　findstr /i /v "System smss.exe csrss.exe winlogon.exe services.exe lsass.exe svchost.exe conime.exe explorer.exe cmd.exe wmiprvse.exe Userinit.exe taskkill.exe" pslist.txt >>npslist.txt
　　for /f %%a in (npslist.txt) do taskkill /f /t /im %%a
　　IF ERRORLEVEL 1 NTSD -c q -P %%a