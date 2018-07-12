check-installed-softwares
=========================

Scripts to collect installed softwares from windows domain computers

#. Clone this repo

#. Download and copy ``PsExec.exe`` to repo folder

#. Execute ``PsExec.exe`` for the first time accepting the license

#. Feed ``all_computers.txt`` file with the machines to be checked

#. Optionally change the ``output`` var inside ``check_installed_softwares.bat`` to a ``\\share\%computername%.txt`` to centralize all files

#. Execute ``check_installed_softwares.bat`` to generate a list of local machine for tests

#. Execute/Schedule the ``check_installed_softwares_loop.bat`` file after fill all credentials
