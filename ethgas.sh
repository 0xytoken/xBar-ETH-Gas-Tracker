#!/bin/bash
#
# <xbar.title>ETH Gas Price</xbar.title>
# <xbar.version>v1.0.1</xbar.version>
# <xbar.author>Niklas Muegge</xbar.author>
# <xbar.author.github>0xytoken</xbar.author.github>
# <xbar.desc>ETH gas price from Etherscan.</xbar.desc>
# <xbar.image>https://i.imgur.com/f1hPKO2.png</xbar.image>
# <xbar.abouturl>https://www.etherscan.io/</xbar.abouturl>
curl -s 'https://api.etherscan.io/api?module=gastracker&action=gasoracle&apikey=YOUR_API_KEY' | python3 -c "import sys, json; res=json.load(sys.stdin); print(res['result']['FastGasPrice'] + ' Ξ ⛽ | color=red'); print(res['result']['ProposeGasPrice'] + ' Ξ ⛽ | color=yellow'); print(res['result']['SafeGasPrice'] + ' Ξ ⛽ | color=green')"
