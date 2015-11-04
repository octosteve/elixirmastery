defmodule FunctionalProgrammingTest do
  use ExUnit.Case
  doctest FunctionalProgramming

  @passwd """
nobody:*:-2:-2:Unprivileged User:/var/empty:/usr/bin/false
root:*:0:0:System Administrator:/var/root:/bin/sh
daemon:*:1:1:System Services:/var/root:/usr/bin/false
_uucp:*:4:4:Unix to Unix Copy Protocol:/var/spool/uucp:/usr/sbin/uucico
_taskgated:*:13:13:Task Gate Daemon:/var/empty:/usr/bin/false
_networkd:*:24:24:Network Services:/var/networkd:/usr/bin/false
_installassistant:*:25:25:Install Assistant:/var/empty:/usr/bin/false
_lp:*:26:26:Printing Services:/var/spool/cups:/usr/bin/false
_postfix:*:27:27:Postfix Mail Server:/var/spool/postfix:/usr/bin/false
_scsd:*:31:31:Service Configuration Service:/var/empty:/usr/bin/false
_ces:*:32:32:Certificate Enrollment Service:/var/empty:/usr/bin/false
_mcxalr:*:54:54:MCX AppLaunch:/var/empty:/usr/bin/false
_appleevents:*:55:55:AppleEvents Daemon:/var/empty:/usr/bin/false
_geod:*:56:56:Geo Services Daemon:/var/db/geod:/usr/bin/false
_serialnumberd:*:58:58:Serial Number Daemon:/var/empty:/usr/bin/false
_devdocs:*:59:59:Developer Documentation:/var/empty:/usr/bin/false
_sandbox:*:60:60:Seatbelt:/var/empty:/usr/bin/false
_mdnsresponder:*:65:65:mDNSResponder:/var/empty:/usr/bin/false
_ard:*:67:67:Apple Remote Desktop:/var/empty:/usr/bin/false
_www:*:70:70:World Wide Web Server:/Library/WebServer:/usr/bin/false
_eppc:*:71:71:Apple Events User:/var/empty:/usr/bin/false
_cvs:*:72:72:CVS Server:/var/empty:/usr/bin/false
_svn:*:73:73:SVN Server:/var/empty:/usr/bin/false
_mysql:*:74:74:MySQL Server:/var/empty:/usr/bin/false

"""

@characters [
    %{name: "Han",        type: :human,   rebel: true,    weight: 185},
    %{name: "Jabba",      type: :hutt,    rebel: false,   weight: 2200},
    %{name: "Chewie",     type: :wookie,  rebel: true,    weight: 350},
    %{name: "r2d2",       type: :droid,   rebel: true,    weight: 250},
    %{name: "Luke",       type: :human,   rebel: true,    weight: 140},
    %{name: "Boba Fett",  type: :human,   rebel: false,   weight: 175},
  ]

  test "gets first word from 5th field" do
    assert FunctionalProgramming.first_word_from_fifth(@passwd) == ["Unprivileged", "System", "Unix", "Task", "Network"]
  end

  test "find_by_type" do
    assert FunctionalProgramming.find_by_type(@characters, :human) == [%{name: "Boba Fett", rebel: false, type: :human, weight: 175},
            %{name: "Luke", rebel: true, type: :human, weight: 140},
            %{name: "Han", rebel: true, type: :human, weight: 185}]
  end
end
