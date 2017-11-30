use Kelp::Base -strict;
use Kelp::Test;
use Test::More;
use HTTP::Request::Common;
use Hanoha;

# Create an application object
my $app = Hanoha->new( mode => 'test' );

# Feed it into a test object
my $t = Kelp::Test->new( app => $app );

# Send a GET request to /home and test the response
$t->request( GET '/home' )
  ->code_is(200)
  ->content_type_is('text/html')
  ->content_like(qr/Hello, world!/);

done_testing;
