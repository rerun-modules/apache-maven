# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Thu Nov  8 14:02:31 PST 2012
#
#/ usage: apache-maven:build  --url|-u <http://apache.mirrors.lucidnetworks.net/maven/maven-3>  --format|-f <rpm>  --release|-r <1>  --version|-v <>  --directory|-d <> 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {
    
    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --url|-u) rerun_option_check $# ; URL=$2 ; shift ;;
            --format|-f) rerun_option_check $# ; FORMAT=$2 ; shift ;;
            --release|-r) rerun_option_check $# ; RELEASE=$2 ; shift ;;
            --version|-v) rerun_option_check $# ; VERSION=$2 ; shift ;;
            --directory|-d) rerun_option_check $# ; DIRECTORY=$2 ; shift ;;
            # help option
            -?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [ -z "$URL" ] && URL="http://apache.mirrors.lucidnetworks.net/maven/maven-3"
    [ -z "$FORMAT" ] && FORMAT="rpm"
    [ -z "$RELEASE" ] && RELEASE="1"
    # Check required options are set
    [ -z "$URL" ] && { echo >&2 "missing required option: --url" ; return 2 ; }
    [ -z "$FORMAT" ] && { echo >&2 "missing required option: --format" ; return 2 ; }
    [ -z "$RELEASE" ] && { echo >&2 "missing required option: --release" ; return 2 ; }
    [ -z "$VERSION" ] && { echo >&2 "missing required option: --version" ; return 2 ; }
    [ -z "$DIRECTORY" ] && { echo >&2 "missing required option: --directory" ; return 2 ; }
    # If option variables are declared exportable, export them.
    export URL
    export FORMAT
    export RELEASE
    export VERSION
    export DIRECTORY
    #
    return 0
}


# Initialize the options variables to null.
URL=
FORMAT=
RELEASE=
VERSION=
DIRECTORY=


