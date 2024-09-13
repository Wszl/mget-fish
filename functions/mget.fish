function wget
    bash -c "export GITHUB_MIRROR=$GITHUB_MIRROR; source $__mget_home/mget.sh ; _mget $argv" ; 
end
