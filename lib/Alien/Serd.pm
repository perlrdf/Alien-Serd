package Alien::Serd;

use strict;
use warnings;
use base qw( Alien::Base );
use 5.008004;

1;

=head1 NAME

Alien::Serd - Find or build Serd

=head1 SYNOPSIS

From L<ExtUtils::MakeMaker>:

 use ExtUtils::MakeMaker;
 use Alien::Base::Wrapper ();

 WriteMakefile(
   Alien::Base::Wrapper->new('Alien::Serd')->mm_args2(
     NAME => 'FOO::XS',
     ...
   ),
 );

From L<Module::Build>:

 use Module::Build;
 use Alien::Base::Wrapper qw( Alien::Serd !export );
 use Alien::Serd;

 my $build = Module::Build->new(
   ...
   configure_requires => {
     'Alien::Base::Wrapper' => '0',
     'Alien::Serd' => '0',
     ...
   },
   Alien::Base::Wrapper->mb_args,
   ...
 );

 $build->create_build_script;

From L<Inline::C> / L<Inline::CPP> script:

 use Inline 0.56 with => 'Alien::Serd';

From L<Dist::Zilla>

 [@Filter]
 -bundle = @Basic
 -remove = MakeMaker

 [Prereqs / ConfigureRequires]
 Alien::Serd = 0

 [MakeMaker::Awesome]
 header = use Alien::Base::Wrapper qw( Alien::Serd !export );
 WriteMakefile_arg = Alien::Base::Wrapper->mm_args

From L<FFI::Platypus>:

 use FFI::Platypus;
 use Alien::Serd;

 my $ffi = FFI::Platypus->new(
   lib => [ Alien::Serd->dynamic_libs ],
 );

Command line tool:

 use Alien::Serd;
 use Env qw( @PATH );

 unshift @PATH, Alien::Serd->bin_dir;

=head1 DESCRIPTION

This distribution provides Serd so that it can be used by other
Perl distributions that are on CPAN.  It does this by first trying to
detect an existing install of Serd on your system.  If found it
will use that.  If it cannot be found, the source code will be downloaded
from the internet and it will be installed in a private share location
for the use of other modules.

=head1 SEE ALSO

=over 4

=item L<Alien>

Documentation on the Alien concept itself.

=item L<Alien::Base>

The base class for this Alien.

=item L<Alien::Build::Manual::AlienUser>

Detailed manual for users of Alien classes.

=back

=cut
