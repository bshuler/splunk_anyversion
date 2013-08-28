`wget -N -O previous_releases http://www.splunk.com/page/previous_releases`;
open FILE, "<previous_releases";

my $lineall;
while (my $line = <FILE>){
	chomp $line;
	$lineall .= $line;
}

$lineall =~ s/\r//g;
open FILE, ">splunk_versions";
while ($lineall =~ /file=([^<]+)splunk-([^-]+)-([^-]+)-Linux-i686.tgz&/g) {
	my $url = $1;
	my $version = $2;
	my $build = $3;
	print FILE "$version,$build,"."http://download.splunk.com/releases/$url";
	print FILE "splunk-$version-$build-Linux-i686.tgz?ac=get_splunk_download\n"
}
close FILE;