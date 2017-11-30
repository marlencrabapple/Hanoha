package Hanoha;
use Kelp::Base 'Kelp';

sub build {
    my $self = shift;
    my $r    = $self->routes;
    $r->add( '/home', 'home' );
    $r->add( '/config', sub { $_[0]->config_hash } );
}

sub home {
    my $self = shift;
    $self->template('home');
}

1;
