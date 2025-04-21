
# Reference

[Stick Rules](https://github.com/GeQ1an/Rules/tree/master)

[lhie1 Rules](https://github.com/dler-io/Rules)

[Loyalsoldier](https://github.com/Loyalsoldier/clash-rules)

[~DivineEngine Profiles~](https://github.com/DivineEngine/Profiles/tree/master)

[Hackl0us SS-Rule-Snippet](https://github.com/Hackl0us/SS-Rule-Snippet)

[xOS](https://github.com/xOS/Config/blob/Her/)

## HTTPDNS

<https://github.com/peiyingyao/Rule-for-OCD/blob/master/rewrite/QuantumultX/BlockHTTPDNS/BlockHTTPDNS.list>

<https://github.com/blackmatrix7/ios_rule_script/blob/master/rule/QuantumultX/BlockHttpDNS/BlockHttpDNS.list>

<https://github.com/sve1r/Rules-For-Quantumult-X/blob/main/Rules/Functional/BlockHttpDNS.list>

<https://github.com/dler-io/Rules/blob/main/Clash/Provider/HTTPDNS.yaml>

<https://github.com/VirgilClyne/GetSomeFries/wiki/%F0%9F%9A%AB-HTTPDNS>

<https://github.com/Moli-X/Tool/blob/X/QuantumultX/Rules/HTTPDNS.Block.list>


``` shell
curl -f#L https://github.com/peiyingyao/Rule-for-OCD/raw/refs/heads/master/rewrite/QuantumultX/BlockHTTPDNS/BlockHTTPDNS.list -o HTTPDNS-Rule-for-OCD.list

curl -f#L https://raw.githubusercontent.com/VirgilClyne/GetSomeFries/main/ruleset/HTTPDNS.Block.list -o HTTPDNS-VirgilClyne.list
sed -i 's/^DOMAIN/HOST/g' HTTPDNS-VirgilClyne.list

curl -f#L https://github.com/dler-io/Rules/raw/refs/heads/main/Clash/Provider/HTTPDNS.yaml -o HTTPDNS-dler-io.list
sed -i -E -e '2d' -e 's/^\s+//g' -e 's/-\s+//g' -e 's/^DOMAIN/HOST/g' -e 's/Zhihu([A-Z])/\1/g' -e 's/,no-resolve//g' HTTPDNS-dler-io.list
```


## Adblock

<https://github.com/Hackl0us/SS-Rule-Snippet/blob/main/Rulesets/Quantumult/Basic/common-ad-keyword.list>

<https://github.com/Cats-Team/AdRules>

``` shell
curl -f#L https://github.com/Hackl0us/SS-Rule-Snippet/raw/refs/heads/main/Rulesets/Quantumult/Basic/common-ad-keyword.list -o AdBlock-keywords-Hackl0us.list
```

## LAN

``` shell
curl -f#L https://github.com/Loyalsoldier/clash-rules/raw/refs/heads/release/lancidr.txt -o LAN-Loyalsoldier.list
```

## Privacy

OLD xOS:

- <https://github.com/Yao4github/Config/blob/Her/QuantumultX/RuleSet/Privacy.list>
- <https://github.com/Saming09091/Config/blob/Her/QuantumultX/RuleSet/Privacy.list>


<https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/QuantumultX/Privacy>

<https://github.com/xOS/Config/blob/Her/RuleSet/Privacy.list>



## GEOIP

<https://github.com/Hackl0us/GeoIP2-CN>