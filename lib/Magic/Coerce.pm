package Magic::Coerce;

use strict;
use warnings;

use XSLoader;

XSLoader::load(__PACKAGE__, __PACKAGE__->VERSION);

use Exporter 5.57 'import';
our @EXPORT = qw/coerce_int coerce_float coerce_string coerce_callback/;

1;

# ABSTRACT: magical coercers for scalar values

=head1 SYNOPSIS

 coerce_int(my $intval = 0);

 coerce_callback($value, sub($value) { Math::Bigint->new($value) });

=func C<coerce_int($var, $delayed = false)>

This will coerce any value assigned to C<$var> to an integer. Unless C<$delayed> is true it will immediately coerce the value.

=func C<coerce_float($var, $delayed = false)>

This will coerce any value assigned to C<$var> to a floating point number. Unless C<$delayed> is true it will immediately coerce the value.

=func C<coerce_string($var, $delayed = false)>

This will coerce any value assigned to C<$var> to a string. Unless C<$delayed> is true it will immediately coerce the value.

=func C<coerce_callback($var, &callback, $delayed = false)>

This will coerce the value on assignment using the callback. Unless C<$delayed> is true it will immediately coerce the value.
