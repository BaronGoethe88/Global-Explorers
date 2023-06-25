#!/usr/bin/perl -w

# The Start of the File
use strict;
use warnings;

my $adventure_company = "A travel and adventure company that provides immersive, cultural experiences and unique thrills around the world.";

# Define the constants
use constant MAX_THRILLS => 20;
use constant MAX_COUNTRIES => 10;

# Declare global variables
my @countries;
my @thrills;

# Populate the countries and thrills array
sub populate_arrays {
    for (my $i = 0; $i < MAX_THRILLS; $i++) {
        push(@thrills, "thrill_$i");
    }

    for (my $i = 0; $i < MAX_COUNTRIES; $i++) {
        push(@countries, "country_$i");
    }
}

# Define function to generate ready made trips
sub generate_trip {
    my $country = shift;
    my $thrill = shift;

    my $trip = "The $adventure_company is offering a trip to $country.
                   This trip includes $thrill and other cultural experiences.
                    Come join us and enjoy the unique thrills of $country!";

    print $trip . "\n\n";
}

# Main loop
 populate_arrays();

 foreach my $country (@countries) {
    foreach my $thrill (@thrills) {
        generate_trip($country, $thrill);
     }
 }