# Generated by Makefile.PL
use Test;
use lib qw(. ws/lib);
BEGIN { plan tests => 14 };
use PGWS; ok(1);
use PGWS::Core; ok(1);
use PGWS::DBConfig; ok(1);
use PGWS::Daemon; ok(1);
use PGWS::Frontend; ok(1);
use PGWS::Meta; ok(1);
use PGWS::Plugin; ok(1);
use PGWS::ProcManager; ok(1);
use PGWS::Utils; ok(1);
#use PGWS::Frontend::Apache; ok(1);
use PGWS::Frontend::CGI; ok(1);
use PGWS::Plugin::System::ACL; ok(1);
use PGWS::Plugin::System::Cache; ok(1);
use PGWS::Plugin::System::Mailer; ok(1);
use PGWS::Plugin::System::Store; ok(1);
