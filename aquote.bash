#! /bin/bash
# Maintainer: Estela ad Astra <i@estela.cn>
# Version: git
tip="(Your CPU not zzkk)"
array1=("信创的创，是泥头车的创"
    "快跑，是四核 2F"
    "信任信创的人，最终底裤都会被创没。"
    "我觉得我们主动去跟华为糊弄鬼的东西过不去，我们应该去 600 号自首"
    "什么事大号手机啊（战术后仰"
    "你想看的那个文档 我也想看"
    "RISCV，比信创更创。"
    "信不信随你，创肯定是创的"
    "“创死人不偿命的新设计”， 简称“创新”"
    "信创 BIOS 也不是什么好玩意"
    "体制外除了群友谁用信创啊（？"
    "相信信创就是在相信鬼"
    "都什么年代了还在折腾传统指令集"
    "GB/T 114514-2022 LoongArch 处理器指令集架构"
    "散热器也要自主（暴论"
    "我以为你对信创这么熟悉，这种事情怎么还想不明白"
    "广告位招租 欢迎各大R̶I̶S̶C̶厂在此投放BOSS直聘"
    "手写不了 VLIW 的话，就大声的用 NOP 掩盖过去罢！"
    "写代码的时候用 NOP delay slot 的话，作为 senior 的生活就结束了罢"
    "？我不是正在自己创自己吗（x"
    "他山之石，可以装进泥头车里运过来"
    "每个 vendor 都平等地有创死用户的机会"
    "相比之下，飞腾的机器没那么创"
    "想  创  人"
    "现有 rv 啥都没有啊（x"
    "对创"
    "软硬件互相创来创去是世界的一部分"
    "你 Robin 姐姐什么时候骗过你.png"
    "喜欢吗，主线内核起不来那种"
    "在创与被创中提升自我！"
    "PLCT 最不缺两样东西，一样是 HiFive Unmatched，另一样是 xyn"
    "OI群里有信创卖：OI-->xyn-->信创\n南大镜像站的黑暗主题叫对立：开源->xyn->音游"
    "集龙书也不能换不锈钢脸盆啊（"
    "jjv那个gpu是浪费沙子"
    "“我们比申威和飞腾市场做得好是因为他们根本没有销售”"
    "请立即就近寻求精神专科帮助"
    "群友最爱的 MIPS"
    "你感动了龙芯之神，祂决定帮你把电脑变成3A5000"
    "你感动了RISC-V之神，祂决定帮你把电脑变成 HiFive Unmatched"
    "RV 不是美国龙芯么"
    "什么时候能用上群友画的机箱，装着群友设计的主板用着群友流的片"
    "abi：不是你的世界，请重试"
    "能动，不是很创"
    "*存在过特别定制的固件* 一听就很创人（x"
)

case $(uname -m) in
"x86"*)
    cpu=$(awk -F': ' '/model name/ {print $2; exit}' /proc/cpuinfo)
    case $cpu in
    "ZHAOXIN"* | "HYGON"*)
        #ZZKK
        ;;
    *)
        echo $tip
        ;;
    esac
    ;;
"arm"* | "aarch64")
    cpu=$(awk -F': ' '/implementer/ {print $2; exit}' /proc/cpuinfo)
    case $cpu in
    "0x48" | "0x70") # HiSilicon, Phytium
        #ZZKK
        ;;
    *)
        echo $tip
        ;;
    esac
    ;;
"mips"*)
    cpu=$(awk -F': ' '/model/ {print $2; exit}' /proc/cpuinfo)
    case $cpu in
    *"Loongson"*)
        #ZZKK
        ;;
    *)
        echo $tip
        ;;
    esac
    ;;
"loongarch"*)
    #ZZKK
    ;;
"sw"*)
    #ZZKK
    ;;
"riscv"*)
    echo -e "\e[1;33SRISCV，比信创更创。\e[m"
    ;;
*)
    echo $tip
    ;;
esac

r=$((RANDOM % ${#array1[@]}))
echo -e "\e[1;33m${array1[r]}\e[m"
