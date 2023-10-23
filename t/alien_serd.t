use Test2::V0;
use Test::Alien;
use Test::Alien::Diag;
use Alien::Serd;

alien_diag 'Alien::Serd';
alien_ok 'Alien::Serd';

# run_ok([ ... ])
#   ->success
#   ->out_like(qr/ ... /);

# my $xs = <<'END';
# #include "EXTERN.h"
# #include "perl.h"
# #include "XSUB.h"
# ...
#
# MODULE = main PACKAGE = main
#
# ...
# END
# xs_ok $xs, with_subtest {
#   ...
# };

# ffi_ok { symbols => [...] }, with_subtest {
#   my $ffi = shift;
#   ...
# };

done_testing;
