
# Reference

[Stick Rules](https://github.com/GeQ1an/Rules/tree/master)

[lhie1 Rules](https://github.com/dler-io/Rules)

[Loyalsoldier](https://github.com/Loyalsoldier/clash-rules)

[~DivineEngine Profiles~](https://github.com/DivineEngine/Profiles/tree/master)

[Hackl0us SS-Rule-Snippet](https://github.com/Hackl0us/SS-Rule-Snippet)

[xOS](https://github.com/xOS/Config/blob/Her/)


# filter

默认 Quantumult X 会启用 **「分流匹配优化」**

策略优先级先后顺序为：`HOST > HOST-SUFFIX > HOST-WILDCARD > HOST-KEYWORD > USER-AGENT > IP-CIDR`

**匹配优先级** 不按 `filter_remote` 规则 **引用顺序** 匹配，被 **「分流匹配优化」** 覆盖：

    AdBlock-keywords-Hackl0us.list:host-keyword,umeng,reject
    Privacy-xOS-OLD.list:HOST-KEYWORD,log.umeng.com,REJECT
    Privacy-xOS-OLD.list:HOST-KEYWORD,logs.umeng.com,REJECT
    Privacy-xOS-OLD.list:HOST-KEYWORD,logs.umengcloud.com,REJECT

    CN.list:HOST-SUFFIX,umeng.com,CN                                <-- 命中

「设置」 --> 「其他设置」 --> 「VPN」 --> 「分流匹配优化」关闭

[规则系统](https://wiki.repcz.link/quantumultx/filter/)

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


## rewrite

<https://github.com/app2smile/rules>

    广告联盟
    腾讯新闻
    起点
    Spotify
    Spotify 歌词翻译
    哔哩哔哩
    贴吧
    YouTube

# 免责声明

本仓库源代码按 “原样” 提供，不带有任何明示或暗示的保证，包括但不限于对适销性、特定目的适用性或非侵权性的暗示保证。使用者有责任确保其使用符合当地法律法规。

所有以任何方式查看本仓库内容的人、或直接或间接使用本仓库内容的使用者都应仔细阅读此声明。本仓库管理者保留随时更改或补充此免责声明的权利。一旦使用、复制、修改了本仓库内容，则视为您已接受此免责声明。

本仓库管理者不能保证本仓库内容的合法性、准确性、完整性和有效性，请根据情况自行判断。本仓库内容，**仅用于测试和学习研究**，禁止用于商业用途，不得将其用于违反国家、地区、组织等的法律法规或相关规定的其他用途。

本仓库内容中涉及的第三方硬件、软件等，与本仓库内容没有任何直接或间接的关系。本仓库内容仅对部署和使用过程进行客观描述，不代表支持使用任何第三方硬件、软件。使用任何第三方硬件、软件，所造成的一切后果由使用的个人或组织承担，与本仓库内容无关。

所有直接或间接使用本仓库内容的个人和组织，**应 24 小时内完成学习和研究，并及时删除本仓库内容**。如对本仓库内容的功能有需求，应自行开发相关功能。所有基于本仓库内容的源代码，进行的任何修改，为其他个人或组织的自发行为，与本仓库内容没有任何直接或间接的关系，所造成的一切后果亦与本仓库内容和本仓库管理者无关。
