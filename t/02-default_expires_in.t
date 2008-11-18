use Test::More tests => 2;
use LWP::Simple::WithCache;
is($LWP::Simple::ua->{cache}->get_default_expires_in(), 600, 'default_expires_in 10 minutes (set by LWP::UserAgent::WithCache)');
$LWP::Simple::ua->{cache}->_set_default_expires_in(86400);
is($LWP::Simple::ua->{cache}->get_default_expires_in(), 86400, 'default_expires_in 1 day (customized)');
