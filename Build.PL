use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new
(
	module_name				=> 'buyplan',
	dist_version			=> 0.1,
	dist_author				=> 'Barbé Creuly Bastien <bastien.barbe.creuly+perl@gmail.com>',
	dist_abstract			=> 'Read datas from google sheet and build a priority buy plan',
	requires				=> {
		"TOML"					=> 0,
		"Heap"					=> 0,
		"Getopt::Long"			=> 0,
		"Spreadsheet::Read"		=> 0,
		"LWP::UserAgent"		=> 0,
		"File::Slurp"           => 0,
		"File::Spec::Functions" => 0,
		"File::HomeDir"         => 0,
		"JSON::MaybeXS"         => 0,
	},
	script_files				=> [qw(bin/buyplan)],
);
$build->create_build_script;
