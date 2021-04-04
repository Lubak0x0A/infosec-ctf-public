# User Profile Customization
# Run Under User Context with bash
# bash userprep-lubak0x0a.sh
echo 'Updating .zshrc profile'
cat userprep-zshrc >> ~/.zshrc

declare -a addons=("https://addons.mozilla.org/firefox/downloads/file/3751860/wappalyzer-latest.xpi" \
"https://addons.mozilla.org/firefox/downloads/file/3616824/foxyproxy_standard-latest.xpi") 

#UserAgentSwitcher

for addon in ${addons[@]}; do
    echo $addon
done

cat 'none' > ~/.target