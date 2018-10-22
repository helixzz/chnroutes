# Fork from yuhaiyang/CN_ISP_RIB

# Generate CN ISP CIDRs
curl -s https://raw.githubusercontent.com/yuhaiyang/CN_ISP_RIB/master/StoneOS-User-Defined-ISP.DAT | grep -v '#' | grep -v '\-\-\-' | cut -d ":" -f2 > CN_ISP_MERGED_CIDR.txt

# Generate China Mobile CIDRs
curl -s https://raw.githubusercontent.com/yuhaiyang/CN_ISP_RIB/master/StoneOS-User-Defined-ISP.DAT | grep -v '#' | grep -v '\-\-\-' | grep '1:' | cut -d ":" -f2 > CN_ISP_CHINAMOBILE_CIDR.txt

# Gererate China Unicom CIDRs
curl -s https://raw.githubusercontent.com/yuhaiyang/CN_ISP_RIB/master/StoneOS-User-Defined-ISP.DAT | grep -v '#' | grep -v '\-\-\-' | grep '2:' | cut -d ":" -f2 > CN_ISP_CHINAUNICOM_CIDR.txt

# Generate China Telecom CIDRs
curl -s https://raw.githubusercontent.com/yuhaiyang/CN_ISP_RIB/master/StoneOS-User-Defined-ISP.DAT | grep -v '#' | grep -v '\-\-\-' | grep '3:' | cut -d ":" -f2 > CN_ISP_CHINATELECOM_CIDR.txt
