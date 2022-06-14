#!/bin/bash
# vim: dict=/usr/share/rhts-library/dictionary.vim cpt=.,w,b,u,t,i,k
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
#   runtest.sh of /CoreOS/sos/Regression/bz475190-sos-modifes-ldap-conf
#   Description: Test for bz475190 (sos modifes ldap.conf)
#   Author: Ales Zelinka <azelinka@redhat.com>
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
#   Copyright Red Hat
#
#   SPDX-License-Identifier: GPL-2.0-or-later WITH GPL-CC-1.0
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Include rhts environment
. /usr/share/beakerlib/beakerlib.sh || exit 1

PACKAGE="sos"

rlJournalStart
rlPhaseStartSetup
    rlAssertRpm $PACKAGE
    rlFileBackup /etc/ldap.conf
    rlRun "rm -f /etc/ldap.conf" 0 "removing old ldap.conf"
    rlRun "cp ./ldap.conf ./ldap.slink" 0 "copying our ldap.conf to ldap.slink"
    rlRun "ln -s `pwd`/ldap.slink /etc/ldap.conf" 0 "linking ldap.slink to /etc/ldap.conf"
rlPhaseEnd

rlPhaseStartTest
    rlRun "sosreport --batch -o ldap" 0 "running sosreport -o ldap"
    rlRun "diff ldap.conf ldap.slink" 0 "sosreport didn't modify the ldap.conf file"
rlPhaseEnd

rlPhaseStartCleanup
    rlRun "rm -f /etc/ldap.conf ./ldap.slink" 0 "removing ldap configs"
    rlFileRestore
rlPhaseEnd
rlJournalPrintText
rlJournalEnd
