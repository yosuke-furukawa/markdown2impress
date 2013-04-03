use strict;
use warnings FATAL => 'all';
use Module::Build;

my $build = Module::Build->new(
    #license              => 'perl',
    recursive_test_files => 1,
    dynamic_config       => 0,
    build_requires       => {
    },
    configure_requires => { 'Module::Build' => '0.38' },
    requires           => {
        'perl'                  => '5.008001',
        'Data::Section::Simple' => 0,
        'File::Path'            => 0,
        'Path::Class'           => 0,
        'Text::Markdown'        => 0,
        'Text::Xslate'          => 0,

    },
    no_index    => { 'directory' => [ 'inc', 't', 'xt' ] },
    name        => 'markdown2impress',
    module_name => 'App::markdown2impress',

    #test_files => ( -d '.git' || $ENV{RELEASE_TESTING} ) ? 't/ xt/' : 't/',
    test_files => 't/',
    dist_abstract => 'convert markdown to impress.js',
    #create_readme  => 1,
    #create_license => 1,
);
$build->create_build_script();
