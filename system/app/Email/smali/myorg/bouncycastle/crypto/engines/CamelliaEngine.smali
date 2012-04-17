.class public Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;
.super Ljava/lang/Object;
.source "CamelliaEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final SBOX1_1110:[I

.field private static final SBOX2_0222:[I

.field private static final SBOX3_3033:[I

.field private static final SBOX4_4404:[I

.field private static final SIGMA:[I


# instance fields
.field private _keyIs128:Z

.field private initialised:Z

.field private ke:[I

.field private kw:[I

.field private state:[I

.field private subkey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 24
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SIGMA:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1_1110:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4_4404:[I

    .line 112
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2_0222:[I

    .line 152
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3_3033:[I

    return-void

    .line 24
    :array_0
    .array-data 0x4
        0x7ft 0x66t 0x9et 0xa0t
        0x8bt 0x90t 0xcct 0x3bt
        0x58t 0xe8t 0x7at 0xb6t
        0xb2t 0x73t 0xaat 0x4ct
        0x2ft 0x37t 0xeft 0xc6t
        0xbet 0x82t 0x4ft 0xe9t
        0xa5t 0x53t 0xfft 0x54t
        0x1ct 0x6ft 0xd3t 0xf1t
        0xfat 0x27t 0xe5t 0x10t
        0x1dt 0x2dt 0x68t 0xdet
        0xc2t 0x88t 0x56t 0xb0t
        0xfdt 0xc1t 0xe6t 0xb3t
    .end array-data

    .line 32
    :array_1
    .array-data 0x4
        0x0t 0x70t 0x70t 0x70t
        0x0t 0x82t 0x82t 0x82t
        0x0t 0x2ct 0x2ct 0x2ct
        0x0t 0xect 0xect 0xect
        0x0t 0xb3t 0xb3t 0xb3t
        0x0t 0x27t 0x27t 0x27t
        0x0t 0xc0t 0xc0t 0xc0t
        0x0t 0xe5t 0xe5t 0xe5t
        0x0t 0xe4t 0xe4t 0xe4t
        0x0t 0x85t 0x85t 0x85t
        0x0t 0x57t 0x57t 0x57t
        0x0t 0x35t 0x35t 0x35t
        0x0t 0xeat 0xeat 0xeat
        0x0t 0xct 0xct 0xct
        0x0t 0xaet 0xaet 0xaet
        0x0t 0x41t 0x41t 0x41t
        0x0t 0x23t 0x23t 0x23t
        0x0t 0xeft 0xeft 0xeft
        0x0t 0x6bt 0x6bt 0x6bt
        0x0t 0x93t 0x93t 0x93t
        0x0t 0x45t 0x45t 0x45t
        0x0t 0x19t 0x19t 0x19t
        0x0t 0xa5t 0xa5t 0xa5t
        0x0t 0x21t 0x21t 0x21t
        0x0t 0xedt 0xedt 0xedt
        0x0t 0xet 0xet 0xet
        0x0t 0x4ft 0x4ft 0x4ft
        0x0t 0x4et 0x4et 0x4et
        0x0t 0x1dt 0x1dt 0x1dt
        0x0t 0x65t 0x65t 0x65t
        0x0t 0x92t 0x92t 0x92t
        0x0t 0xbdt 0xbdt 0xbdt
        0x0t 0x86t 0x86t 0x86t
        0x0t 0xb8t 0xb8t 0xb8t
        0x0t 0xaft 0xaft 0xaft
        0x0t 0x8ft 0x8ft 0x8ft
        0x0t 0x7ct 0x7ct 0x7ct
        0x0t 0xebt 0xebt 0xebt
        0x0t 0x1ft 0x1ft 0x1ft
        0x0t 0xcet 0xcet 0xcet
        0x0t 0x3et 0x3et 0x3et
        0x0t 0x30t 0x30t 0x30t
        0x0t 0xdct 0xdct 0xdct
        0x0t 0x5ft 0x5ft 0x5ft
        0x0t 0x5et 0x5et 0x5et
        0x0t 0xc5t 0xc5t 0xc5t
        0x0t 0xbt 0xbt 0xbt
        0x0t 0x1at 0x1at 0x1at
        0x0t 0xa6t 0xa6t 0xa6t
        0x0t 0xe1t 0xe1t 0xe1t
        0x0t 0x39t 0x39t 0x39t
        0x0t 0xcat 0xcat 0xcat
        0x0t 0xd5t 0xd5t 0xd5t
        0x0t 0x47t 0x47t 0x47t
        0x0t 0x5dt 0x5dt 0x5dt
        0x0t 0x3dt 0x3dt 0x3dt
        0x0t 0xd9t 0xd9t 0xd9t
        0x0t 0x1t 0x1t 0x1t
        0x0t 0x5at 0x5at 0x5at
        0x0t 0xd6t 0xd6t 0xd6t
        0x0t 0x51t 0x51t 0x51t
        0x0t 0x56t 0x56t 0x56t
        0x0t 0x6ct 0x6ct 0x6ct
        0x0t 0x4dt 0x4dt 0x4dt
        0x0t 0x8bt 0x8bt 0x8bt
        0x0t 0xdt 0xdt 0xdt
        0x0t 0x9at 0x9at 0x9at
        0x0t 0x66t 0x66t 0x66t
        0x0t 0xfbt 0xfbt 0xfbt
        0x0t 0xcct 0xcct 0xcct
        0x0t 0xb0t 0xb0t 0xb0t
        0x0t 0x2dt 0x2dt 0x2dt
        0x0t 0x74t 0x74t 0x74t
        0x0t 0x12t 0x12t 0x12t
        0x0t 0x2bt 0x2bt 0x2bt
        0x0t 0x20t 0x20t 0x20t
        0x0t 0xf0t 0xf0t 0xf0t
        0x0t 0xb1t 0xb1t 0xb1t
        0x0t 0x84t 0x84t 0x84t
        0x0t 0x99t 0x99t 0x99t
        0x0t 0xdft 0xdft 0xdft
        0x0t 0x4ct 0x4ct 0x4ct
        0x0t 0xcbt 0xcbt 0xcbt
        0x0t 0xc2t 0xc2t 0xc2t
        0x0t 0x34t 0x34t 0x34t
        0x0t 0x7et 0x7et 0x7et
        0x0t 0x76t 0x76t 0x76t
        0x0t 0x5t 0x5t 0x5t
        0x0t 0x6dt 0x6dt 0x6dt
        0x0t 0xb7t 0xb7t 0xb7t
        0x0t 0xa9t 0xa9t 0xa9t
        0x0t 0x31t 0x31t 0x31t
        0x0t 0xd1t 0xd1t 0xd1t
        0x0t 0x17t 0x17t 0x17t
        0x0t 0x4t 0x4t 0x4t
        0x0t 0xd7t 0xd7t 0xd7t
        0x0t 0x14t 0x14t 0x14t
        0x0t 0x58t 0x58t 0x58t
        0x0t 0x3at 0x3at 0x3at
        0x0t 0x61t 0x61t 0x61t
        0x0t 0xdet 0xdet 0xdet
        0x0t 0x1bt 0x1bt 0x1bt
        0x0t 0x11t 0x11t 0x11t
        0x0t 0x1ct 0x1ct 0x1ct
        0x0t 0x32t 0x32t 0x32t
        0x0t 0xft 0xft 0xft
        0x0t 0x9ct 0x9ct 0x9ct
        0x0t 0x16t 0x16t 0x16t
        0x0t 0x53t 0x53t 0x53t
        0x0t 0x18t 0x18t 0x18t
        0x0t 0xf2t 0xf2t 0xf2t
        0x0t 0x22t 0x22t 0x22t
        0x0t 0xfet 0xfet 0xfet
        0x0t 0x44t 0x44t 0x44t
        0x0t 0xcft 0xcft 0xcft
        0x0t 0xb2t 0xb2t 0xb2t
        0x0t 0xc3t 0xc3t 0xc3t
        0x0t 0xb5t 0xb5t 0xb5t
        0x0t 0x7at 0x7at 0x7at
        0x0t 0x91t 0x91t 0x91t
        0x0t 0x24t 0x24t 0x24t
        0x0t 0x8t 0x8t 0x8t
        0x0t 0xe8t 0xe8t 0xe8t
        0x0t 0xa8t 0xa8t 0xa8t
        0x0t 0x60t 0x60t 0x60t
        0x0t 0xfct 0xfct 0xfct
        0x0t 0x69t 0x69t 0x69t
        0x0t 0x50t 0x50t 0x50t
        0x0t 0xaat 0xaat 0xaat
        0x0t 0xd0t 0xd0t 0xd0t
        0x0t 0xa0t 0xa0t 0xa0t
        0x0t 0x7dt 0x7dt 0x7dt
        0x0t 0xa1t 0xa1t 0xa1t
        0x0t 0x89t 0x89t 0x89t
        0x0t 0x62t 0x62t 0x62t
        0x0t 0x97t 0x97t 0x97t
        0x0t 0x54t 0x54t 0x54t
        0x0t 0x5bt 0x5bt 0x5bt
        0x0t 0x1et 0x1et 0x1et
        0x0t 0x95t 0x95t 0x95t
        0x0t 0xe0t 0xe0t 0xe0t
        0x0t 0xfft 0xfft 0xfft
        0x0t 0x64t 0x64t 0x64t
        0x0t 0xd2t 0xd2t 0xd2t
        0x0t 0x10t 0x10t 0x10t
        0x0t 0xc4t 0xc4t 0xc4t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x48t 0x48t 0x48t
        0x0t 0xa3t 0xa3t 0xa3t
        0x0t 0xf7t 0xf7t 0xf7t
        0x0t 0x75t 0x75t 0x75t
        0x0t 0xdbt 0xdbt 0xdbt
        0x0t 0x8at 0x8at 0x8at
        0x0t 0x3t 0x3t 0x3t
        0x0t 0xe6t 0xe6t 0xe6t
        0x0t 0xdat 0xdat 0xdat
        0x0t 0x9t 0x9t 0x9t
        0x0t 0x3ft 0x3ft 0x3ft
        0x0t 0xddt 0xddt 0xddt
        0x0t 0x94t 0x94t 0x94t
        0x0t 0x87t 0x87t 0x87t
        0x0t 0x5ct 0x5ct 0x5ct
        0x0t 0x83t 0x83t 0x83t
        0x0t 0x2t 0x2t 0x2t
        0x0t 0xcdt 0xcdt 0xcdt
        0x0t 0x4at 0x4at 0x4at
        0x0t 0x90t 0x90t 0x90t
        0x0t 0x33t 0x33t 0x33t
        0x0t 0x73t 0x73t 0x73t
        0x0t 0x67t 0x67t 0x67t
        0x0t 0xf6t 0xf6t 0xf6t
        0x0t 0xf3t 0xf3t 0xf3t
        0x0t 0x9dt 0x9dt 0x9dt
        0x0t 0x7ft 0x7ft 0x7ft
        0x0t 0xbft 0xbft 0xbft
        0x0t 0xe2t 0xe2t 0xe2t
        0x0t 0x52t 0x52t 0x52t
        0x0t 0x9bt 0x9bt 0x9bt
        0x0t 0xd8t 0xd8t 0xd8t
        0x0t 0x26t 0x26t 0x26t
        0x0t 0xc8t 0xc8t 0xc8t
        0x0t 0x37t 0x37t 0x37t
        0x0t 0xc6t 0xc6t 0xc6t
        0x0t 0x3bt 0x3bt 0x3bt
        0x0t 0x81t 0x81t 0x81t
        0x0t 0x96t 0x96t 0x96t
        0x0t 0x6ft 0x6ft 0x6ft
        0x0t 0x4bt 0x4bt 0x4bt
        0x0t 0x13t 0x13t 0x13t
        0x0t 0xbet 0xbet 0xbet
        0x0t 0x63t 0x63t 0x63t
        0x0t 0x2et 0x2et 0x2et
        0x0t 0xe9t 0xe9t 0xe9t
        0x0t 0x79t 0x79t 0x79t
        0x0t 0xa7t 0xa7t 0xa7t
        0x0t 0x8ct 0x8ct 0x8ct
        0x0t 0x9ft 0x9ft 0x9ft
        0x0t 0x6et 0x6et 0x6et
        0x0t 0xbct 0xbct 0xbct
        0x0t 0x8et 0x8et 0x8et
        0x0t 0x29t 0x29t 0x29t
        0x0t 0xf5t 0xf5t 0xf5t
        0x0t 0xf9t 0xf9t 0xf9t
        0x0t 0xb6t 0xb6t 0xb6t
        0x0t 0x2ft 0x2ft 0x2ft
        0x0t 0xfdt 0xfdt 0xfdt
        0x0t 0xb4t 0xb4t 0xb4t
        0x0t 0x59t 0x59t 0x59t
        0x0t 0x78t 0x78t 0x78t
        0x0t 0x98t 0x98t 0x98t
        0x0t 0x6t 0x6t 0x6t
        0x0t 0x6at 0x6at 0x6at
        0x0t 0xe7t 0xe7t 0xe7t
        0x0t 0x46t 0x46t 0x46t
        0x0t 0x71t 0x71t 0x71t
        0x0t 0xbat 0xbat 0xbat
        0x0t 0xd4t 0xd4t 0xd4t
        0x0t 0x25t 0x25t 0x25t
        0x0t 0xabt 0xabt 0xabt
        0x0t 0x42t 0x42t 0x42t
        0x0t 0x88t 0x88t 0x88t
        0x0t 0xa2t 0xa2t 0xa2t
        0x0t 0x8dt 0x8dt 0x8dt
        0x0t 0xfat 0xfat 0xfat
        0x0t 0x72t 0x72t 0x72t
        0x0t 0x7t 0x7t 0x7t
        0x0t 0xb9t 0xb9t 0xb9t
        0x0t 0x55t 0x55t 0x55t
        0x0t 0xf8t 0xf8t 0xf8t
        0x0t 0xeet 0xeet 0xeet
        0x0t 0xact 0xact 0xact
        0x0t 0xat 0xat 0xat
        0x0t 0x36t 0x36t 0x36t
        0x0t 0x49t 0x49t 0x49t
        0x0t 0x2at 0x2at 0x2at
        0x0t 0x68t 0x68t 0x68t
        0x0t 0x3ct 0x3ct 0x3ct
        0x0t 0x38t 0x38t 0x38t
        0x0t 0xf1t 0xf1t 0xf1t
        0x0t 0xa4t 0xa4t 0xa4t
        0x0t 0x40t 0x40t 0x40t
        0x0t 0x28t 0x28t 0x28t
        0x0t 0xd3t 0xd3t 0xd3t
        0x0t 0x7bt 0x7bt 0x7bt
        0x0t 0xbbt 0xbbt 0xbbt
        0x0t 0xc9t 0xc9t 0xc9t
        0x0t 0x43t 0x43t 0x43t
        0x0t 0xc1t 0xc1t 0xc1t
        0x0t 0x15t 0x15t 0x15t
        0x0t 0xe3t 0xe3t 0xe3t
        0x0t 0xadt 0xadt 0xadt
        0x0t 0xf4t 0xf4t 0xf4t
        0x0t 0x77t 0x77t 0x77t
        0x0t 0xc7t 0xc7t 0xc7t
        0x0t 0x80t 0x80t 0x80t
        0x0t 0x9et 0x9et 0x9et
    .end array-data

    .line 72
    :array_2
    .array-data 0x4
        0x70t 0x0t 0x70t 0x70t
        0x2ct 0x0t 0x2ct 0x2ct
        0xb3t 0x0t 0xb3t 0xb3t
        0xc0t 0x0t 0xc0t 0xc0t
        0xe4t 0x0t 0xe4t 0xe4t
        0x57t 0x0t 0x57t 0x57t
        0xeat 0x0t 0xeat 0xeat
        0xaet 0x0t 0xaet 0xaet
        0x23t 0x0t 0x23t 0x23t
        0x6bt 0x0t 0x6bt 0x6bt
        0x45t 0x0t 0x45t 0x45t
        0xa5t 0x0t 0xa5t 0xa5t
        0xedt 0x0t 0xedt 0xedt
        0x4ft 0x0t 0x4ft 0x4ft
        0x1dt 0x0t 0x1dt 0x1dt
        0x92t 0x0t 0x92t 0x92t
        0x86t 0x0t 0x86t 0x86t
        0xaft 0x0t 0xaft 0xaft
        0x7ct 0x0t 0x7ct 0x7ct
        0x1ft 0x0t 0x1ft 0x1ft
        0x3et 0x0t 0x3et 0x3et
        0xdct 0x0t 0xdct 0xdct
        0x5et 0x0t 0x5et 0x5et
        0xbt 0x0t 0xbt 0xbt
        0xa6t 0x0t 0xa6t 0xa6t
        0x39t 0x0t 0x39t 0x39t
        0xd5t 0x0t 0xd5t 0xd5t
        0x5dt 0x0t 0x5dt 0x5dt
        0xd9t 0x0t 0xd9t 0xd9t
        0x5at 0x0t 0x5at 0x5at
        0x51t 0x0t 0x51t 0x51t
        0x6ct 0x0t 0x6ct 0x6ct
        0x8bt 0x0t 0x8bt 0x8bt
        0x9at 0x0t 0x9at 0x9at
        0xfbt 0x0t 0xfbt 0xfbt
        0xb0t 0x0t 0xb0t 0xb0t
        0x74t 0x0t 0x74t 0x74t
        0x2bt 0x0t 0x2bt 0x2bt
        0xf0t 0x0t 0xf0t 0xf0t
        0x84t 0x0t 0x84t 0x84t
        0xdft 0x0t 0xdft 0xdft
        0xcbt 0x0t 0xcbt 0xcbt
        0x34t 0x0t 0x34t 0x34t
        0x76t 0x0t 0x76t 0x76t
        0x6dt 0x0t 0x6dt 0x6dt
        0xa9t 0x0t 0xa9t 0xa9t
        0xd1t 0x0t 0xd1t 0xd1t
        0x4t 0x0t 0x4t 0x4t
        0x14t 0x0t 0x14t 0x14t
        0x3at 0x0t 0x3at 0x3at
        0xdet 0x0t 0xdet 0xdet
        0x11t 0x0t 0x11t 0x11t
        0x32t 0x0t 0x32t 0x32t
        0x9ct 0x0t 0x9ct 0x9ct
        0x53t 0x0t 0x53t 0x53t
        0xf2t 0x0t 0xf2t 0xf2t
        0xfet 0x0t 0xfet 0xfet
        0xcft 0x0t 0xcft 0xcft
        0xc3t 0x0t 0xc3t 0xc3t
        0x7at 0x0t 0x7at 0x7at
        0x24t 0x0t 0x24t 0x24t
        0xe8t 0x0t 0xe8t 0xe8t
        0x60t 0x0t 0x60t 0x60t
        0x69t 0x0t 0x69t 0x69t
        0xaat 0x0t 0xaat 0xaat
        0xa0t 0x0t 0xa0t 0xa0t
        0xa1t 0x0t 0xa1t 0xa1t
        0x62t 0x0t 0x62t 0x62t
        0x54t 0x0t 0x54t 0x54t
        0x1et 0x0t 0x1et 0x1et
        0xe0t 0x0t 0xe0t 0xe0t
        0x64t 0x0t 0x64t 0x64t
        0x10t 0x0t 0x10t 0x10t
        0x0t 0x0t 0x0t 0x0t
        0xa3t 0x0t 0xa3t 0xa3t
        0x75t 0x0t 0x75t 0x75t
        0x8at 0x0t 0x8at 0x8at
        0xe6t 0x0t 0xe6t 0xe6t
        0x9t 0x0t 0x9t 0x9t
        0xddt 0x0t 0xddt 0xddt
        0x87t 0x0t 0x87t 0x87t
        0x83t 0x0t 0x83t 0x83t
        0xcdt 0x0t 0xcdt 0xcdt
        0x90t 0x0t 0x90t 0x90t
        0x73t 0x0t 0x73t 0x73t
        0xf6t 0x0t 0xf6t 0xf6t
        0x9dt 0x0t 0x9dt 0x9dt
        0xbft 0x0t 0xbft 0xbft
        0x52t 0x0t 0x52t 0x52t
        0xd8t 0x0t 0xd8t 0xd8t
        0xc8t 0x0t 0xc8t 0xc8t
        0xc6t 0x0t 0xc6t 0xc6t
        0x81t 0x0t 0x81t 0x81t
        0x6ft 0x0t 0x6ft 0x6ft
        0x13t 0x0t 0x13t 0x13t
        0x63t 0x0t 0x63t 0x63t
        0xe9t 0x0t 0xe9t 0xe9t
        0xa7t 0x0t 0xa7t 0xa7t
        0x9ft 0x0t 0x9ft 0x9ft
        0xbct 0x0t 0xbct 0xbct
        0x29t 0x0t 0x29t 0x29t
        0xf9t 0x0t 0xf9t 0xf9t
        0x2ft 0x0t 0x2ft 0x2ft
        0xb4t 0x0t 0xb4t 0xb4t
        0x78t 0x0t 0x78t 0x78t
        0x6t 0x0t 0x6t 0x6t
        0xe7t 0x0t 0xe7t 0xe7t
        0x71t 0x0t 0x71t 0x71t
        0xd4t 0x0t 0xd4t 0xd4t
        0xabt 0x0t 0xabt 0xabt
        0x88t 0x0t 0x88t 0x88t
        0x8dt 0x0t 0x8dt 0x8dt
        0x72t 0x0t 0x72t 0x72t
        0xb9t 0x0t 0xb9t 0xb9t
        0xf8t 0x0t 0xf8t 0xf8t
        0xact 0x0t 0xact 0xact
        0x36t 0x0t 0x36t 0x36t
        0x2at 0x0t 0x2at 0x2at
        0x3ct 0x0t 0x3ct 0x3ct
        0xf1t 0x0t 0xf1t 0xf1t
        0x40t 0x0t 0x40t 0x40t
        0xd3t 0x0t 0xd3t 0xd3t
        0xbbt 0x0t 0xbbt 0xbbt
        0x43t 0x0t 0x43t 0x43t
        0x15t 0x0t 0x15t 0x15t
        0xadt 0x0t 0xadt 0xadt
        0x77t 0x0t 0x77t 0x77t
        0x80t 0x0t 0x80t 0x80t
        0x82t 0x0t 0x82t 0x82t
        0xect 0x0t 0xect 0xect
        0x27t 0x0t 0x27t 0x27t
        0xe5t 0x0t 0xe5t 0xe5t
        0x85t 0x0t 0x85t 0x85t
        0x35t 0x0t 0x35t 0x35t
        0xct 0x0t 0xct 0xct
        0x41t 0x0t 0x41t 0x41t
        0xeft 0x0t 0xeft 0xeft
        0x93t 0x0t 0x93t 0x93t
        0x19t 0x0t 0x19t 0x19t
        0x21t 0x0t 0x21t 0x21t
        0xet 0x0t 0xet 0xet
        0x4et 0x0t 0x4et 0x4et
        0x65t 0x0t 0x65t 0x65t
        0xbdt 0x0t 0xbdt 0xbdt
        0xb8t 0x0t 0xb8t 0xb8t
        0x8ft 0x0t 0x8ft 0x8ft
        0xebt 0x0t 0xebt 0xebt
        0xcet 0x0t 0xcet 0xcet
        0x30t 0x0t 0x30t 0x30t
        0x5ft 0x0t 0x5ft 0x5ft
        0xc5t 0x0t 0xc5t 0xc5t
        0x1at 0x0t 0x1at 0x1at
        0xe1t 0x0t 0xe1t 0xe1t
        0xcat 0x0t 0xcat 0xcat
        0x47t 0x0t 0x47t 0x47t
        0x3dt 0x0t 0x3dt 0x3dt
        0x1t 0x0t 0x1t 0x1t
        0xd6t 0x0t 0xd6t 0xd6t
        0x56t 0x0t 0x56t 0x56t
        0x4dt 0x0t 0x4dt 0x4dt
        0xdt 0x0t 0xdt 0xdt
        0x66t 0x0t 0x66t 0x66t
        0xcct 0x0t 0xcct 0xcct
        0x2dt 0x0t 0x2dt 0x2dt
        0x12t 0x0t 0x12t 0x12t
        0x20t 0x0t 0x20t 0x20t
        0xb1t 0x0t 0xb1t 0xb1t
        0x99t 0x0t 0x99t 0x99t
        0x4ct 0x0t 0x4ct 0x4ct
        0xc2t 0x0t 0xc2t 0xc2t
        0x7et 0x0t 0x7et 0x7et
        0x5t 0x0t 0x5t 0x5t
        0xb7t 0x0t 0xb7t 0xb7t
        0x31t 0x0t 0x31t 0x31t
        0x17t 0x0t 0x17t 0x17t
        0xd7t 0x0t 0xd7t 0xd7t
        0x58t 0x0t 0x58t 0x58t
        0x61t 0x0t 0x61t 0x61t
        0x1bt 0x0t 0x1bt 0x1bt
        0x1ct 0x0t 0x1ct 0x1ct
        0xft 0x0t 0xft 0xft
        0x16t 0x0t 0x16t 0x16t
        0x18t 0x0t 0x18t 0x18t
        0x22t 0x0t 0x22t 0x22t
        0x44t 0x0t 0x44t 0x44t
        0xb2t 0x0t 0xb2t 0xb2t
        0xb5t 0x0t 0xb5t 0xb5t
        0x91t 0x0t 0x91t 0x91t
        0x8t 0x0t 0x8t 0x8t
        0xa8t 0x0t 0xa8t 0xa8t
        0xfct 0x0t 0xfct 0xfct
        0x50t 0x0t 0x50t 0x50t
        0xd0t 0x0t 0xd0t 0xd0t
        0x7dt 0x0t 0x7dt 0x7dt
        0x89t 0x0t 0x89t 0x89t
        0x97t 0x0t 0x97t 0x97t
        0x5bt 0x0t 0x5bt 0x5bt
        0x95t 0x0t 0x95t 0x95t
        0xfft 0x0t 0xfft 0xfft
        0xd2t 0x0t 0xd2t 0xd2t
        0xc4t 0x0t 0xc4t 0xc4t
        0x48t 0x0t 0x48t 0x48t
        0xf7t 0x0t 0xf7t 0xf7t
        0xdbt 0x0t 0xdbt 0xdbt
        0x3t 0x0t 0x3t 0x3t
        0xdat 0x0t 0xdat 0xdat
        0x3ft 0x0t 0x3ft 0x3ft
        0x94t 0x0t 0x94t 0x94t
        0x5ct 0x0t 0x5ct 0x5ct
        0x2t 0x0t 0x2t 0x2t
        0x4at 0x0t 0x4at 0x4at
        0x33t 0x0t 0x33t 0x33t
        0x67t 0x0t 0x67t 0x67t
        0xf3t 0x0t 0xf3t 0xf3t
        0x7ft 0x0t 0x7ft 0x7ft
        0xe2t 0x0t 0xe2t 0xe2t
        0x9bt 0x0t 0x9bt 0x9bt
        0x26t 0x0t 0x26t 0x26t
        0x37t 0x0t 0x37t 0x37t
        0x3bt 0x0t 0x3bt 0x3bt
        0x96t 0x0t 0x96t 0x96t
        0x4bt 0x0t 0x4bt 0x4bt
        0xbet 0x0t 0xbet 0xbet
        0x2et 0x0t 0x2et 0x2et
        0x79t 0x0t 0x79t 0x79t
        0x8ct 0x0t 0x8ct 0x8ct
        0x6et 0x0t 0x6et 0x6et
        0x8et 0x0t 0x8et 0x8et
        0xf5t 0x0t 0xf5t 0xf5t
        0xb6t 0x0t 0xb6t 0xb6t
        0xfdt 0x0t 0xfdt 0xfdt
        0x59t 0x0t 0x59t 0x59t
        0x98t 0x0t 0x98t 0x98t
        0x6at 0x0t 0x6at 0x6at
        0x46t 0x0t 0x46t 0x46t
        0xbat 0x0t 0xbat 0xbat
        0x25t 0x0t 0x25t 0x25t
        0x42t 0x0t 0x42t 0x42t
        0xa2t 0x0t 0xa2t 0xa2t
        0xfat 0x0t 0xfat 0xfat
        0x7t 0x0t 0x7t 0x7t
        0x55t 0x0t 0x55t 0x55t
        0xeet 0x0t 0xeet 0xeet
        0xat 0x0t 0xat 0xat
        0x49t 0x0t 0x49t 0x49t
        0x68t 0x0t 0x68t 0x68t
        0x38t 0x0t 0x38t 0x38t
        0xa4t 0x0t 0xa4t 0xa4t
        0x28t 0x0t 0x28t 0x28t
        0x7bt 0x0t 0x7bt 0x7bt
        0xc9t 0x0t 0xc9t 0xc9t
        0xc1t 0x0t 0xc1t 0xc1t
        0xe3t 0x0t 0xe3t 0xe3t
        0xf4t 0x0t 0xf4t 0xf4t
        0xc7t 0x0t 0xc7t 0xc7t
        0x9et 0x0t 0x9et 0x9et
    .end array-data

    .line 112
    :array_3
    .array-data 0x4
        0xe0t 0xe0t 0xe0t 0x0t
        0x5t 0x5t 0x5t 0x0t
        0x58t 0x58t 0x58t 0x0t
        0xd9t 0xd9t 0xd9t 0x0t
        0x67t 0x67t 0x67t 0x0t
        0x4et 0x4et 0x4et 0x0t
        0x81t 0x81t 0x81t 0x0t
        0xcbt 0xcbt 0xcbt 0x0t
        0xc9t 0xc9t 0xc9t 0x0t
        0xbt 0xbt 0xbt 0x0t
        0xaet 0xaet 0xaet 0x0t
        0x6at 0x6at 0x6at 0x0t
        0xd5t 0xd5t 0xd5t 0x0t
        0x18t 0x18t 0x18t 0x0t
        0x5dt 0x5dt 0x5dt 0x0t
        0x82t 0x82t 0x82t 0x0t
        0x46t 0x46t 0x46t 0x0t
        0xdft 0xdft 0xdft 0x0t
        0xd6t 0xd6t 0xd6t 0x0t
        0x27t 0x27t 0x27t 0x0t
        0x8at 0x8at 0x8at 0x0t
        0x32t 0x32t 0x32t 0x0t
        0x4bt 0x4bt 0x4bt 0x0t
        0x42t 0x42t 0x42t 0x0t
        0xdbt 0xdbt 0xdbt 0x0t
        0x1ct 0x1ct 0x1ct 0x0t
        0x9et 0x9et 0x9et 0x0t
        0x9ct 0x9ct 0x9ct 0x0t
        0x3at 0x3at 0x3at 0x0t
        0xcat 0xcat 0xcat 0x0t
        0x25t 0x25t 0x25t 0x0t
        0x7bt 0x7bt 0x7bt 0x0t
        0xdt 0xdt 0xdt 0x0t
        0x71t 0x71t 0x71t 0x0t
        0x5ft 0x5ft 0x5ft 0x0t
        0x1ft 0x1ft 0x1ft 0x0t
        0xf8t 0xf8t 0xf8t 0x0t
        0xd7t 0xd7t 0xd7t 0x0t
        0x3et 0x3et 0x3et 0x0t
        0x9dt 0x9dt 0x9dt 0x0t
        0x7ct 0x7ct 0x7ct 0x0t
        0x60t 0x60t 0x60t 0x0t
        0xb9t 0xb9t 0xb9t 0x0t
        0xbet 0xbet 0xbet 0x0t
        0xbct 0xbct 0xbct 0x0t
        0x8bt 0x8bt 0x8bt 0x0t
        0x16t 0x16t 0x16t 0x0t
        0x34t 0x34t 0x34t 0x0t
        0x4dt 0x4dt 0x4dt 0x0t
        0xc3t 0xc3t 0xc3t 0x0t
        0x72t 0x72t 0x72t 0x0t
        0x95t 0x95t 0x95t 0x0t
        0xabt 0xabt 0xabt 0x0t
        0x8et 0x8et 0x8et 0x0t
        0xbat 0xbat 0xbat 0x0t
        0x7at 0x7at 0x7at 0x0t
        0xb3t 0xb3t 0xb3t 0x0t
        0x2t 0x2t 0x2t 0x0t
        0xb4t 0xb4t 0xb4t 0x0t
        0xadt 0xadt 0xadt 0x0t
        0xa2t 0xa2t 0xa2t 0x0t
        0xact 0xact 0xact 0x0t
        0xd8t 0xd8t 0xd8t 0x0t
        0x9at 0x9at 0x9at 0x0t
        0x17t 0x17t 0x17t 0x0t
        0x1at 0x1at 0x1at 0x0t
        0x35t 0x35t 0x35t 0x0t
        0xcct 0xcct 0xcct 0x0t
        0xf7t 0xf7t 0xf7t 0x0t
        0x99t 0x99t 0x99t 0x0t
        0x61t 0x61t 0x61t 0x0t
        0x5at 0x5at 0x5at 0x0t
        0xe8t 0xe8t 0xe8t 0x0t
        0x24t 0x24t 0x24t 0x0t
        0x56t 0x56t 0x56t 0x0t
        0x40t 0x40t 0x40t 0x0t
        0xe1t 0xe1t 0xe1t 0x0t
        0x63t 0x63t 0x63t 0x0t
        0x9t 0x9t 0x9t 0x0t
        0x33t 0x33t 0x33t 0x0t
        0xbft 0xbft 0xbft 0x0t
        0x98t 0x98t 0x98t 0x0t
        0x97t 0x97t 0x97t 0x0t
        0x85t 0x85t 0x85t 0x0t
        0x68t 0x68t 0x68t 0x0t
        0xfct 0xfct 0xfct 0x0t
        0xect 0xect 0xect 0x0t
        0xat 0xat 0xat 0x0t
        0xdat 0xdat 0xdat 0x0t
        0x6ft 0x6ft 0x6ft 0x0t
        0x53t 0x53t 0x53t 0x0t
        0x62t 0x62t 0x62t 0x0t
        0xa3t 0xa3t 0xa3t 0x0t
        0x2et 0x2et 0x2et 0x0t
        0x8t 0x8t 0x8t 0x0t
        0xaft 0xaft 0xaft 0x0t
        0x28t 0x28t 0x28t 0x0t
        0xb0t 0xb0t 0xb0t 0x0t
        0x74t 0x74t 0x74t 0x0t
        0xc2t 0xc2t 0xc2t 0x0t
        0xbdt 0xbdt 0xbdt 0x0t
        0x36t 0x36t 0x36t 0x0t
        0x22t 0x22t 0x22t 0x0t
        0x38t 0x38t 0x38t 0x0t
        0x64t 0x64t 0x64t 0x0t
        0x1et 0x1et 0x1et 0x0t
        0x39t 0x39t 0x39t 0x0t
        0x2ct 0x2ct 0x2ct 0x0t
        0xa6t 0xa6t 0xa6t 0x0t
        0x30t 0x30t 0x30t 0x0t
        0xe5t 0xe5t 0xe5t 0x0t
        0x44t 0x44t 0x44t 0x0t
        0xfdt 0xfdt 0xfdt 0x0t
        0x88t 0x88t 0x88t 0x0t
        0x9ft 0x9ft 0x9ft 0x0t
        0x65t 0x65t 0x65t 0x0t
        0x87t 0x87t 0x87t 0x0t
        0x6bt 0x6bt 0x6bt 0x0t
        0xf4t 0xf4t 0xf4t 0x0t
        0x23t 0x23t 0x23t 0x0t
        0x48t 0x48t 0x48t 0x0t
        0x10t 0x10t 0x10t 0x0t
        0xd1t 0xd1t 0xd1t 0x0t
        0x51t 0x51t 0x51t 0x0t
        0xc0t 0xc0t 0xc0t 0x0t
        0xf9t 0xf9t 0xf9t 0x0t
        0xd2t 0xd2t 0xd2t 0x0t
        0xa0t 0xa0t 0xa0t 0x0t
        0x55t 0x55t 0x55t 0x0t
        0xa1t 0xa1t 0xa1t 0x0t
        0x41t 0x41t 0x41t 0x0t
        0xfat 0xfat 0xfat 0x0t
        0x43t 0x43t 0x43t 0x0t
        0x13t 0x13t 0x13t 0x0t
        0xc4t 0xc4t 0xc4t 0x0t
        0x2ft 0x2ft 0x2ft 0x0t
        0xa8t 0xa8t 0xa8t 0x0t
        0xb6t 0xb6t 0xb6t 0x0t
        0x3ct 0x3ct 0x3ct 0x0t
        0x2bt 0x2bt 0x2bt 0x0t
        0xc1t 0xc1t 0xc1t 0x0t
        0xfft 0xfft 0xfft 0x0t
        0xc8t 0xc8t 0xc8t 0x0t
        0xa5t 0xa5t 0xa5t 0x0t
        0x20t 0x20t 0x20t 0x0t
        0x89t 0x89t 0x89t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x90t 0x90t 0x90t 0x0t
        0x47t 0x47t 0x47t 0x0t
        0xeft 0xeft 0xeft 0x0t
        0xeat 0xeat 0xeat 0x0t
        0xb7t 0xb7t 0xb7t 0x0t
        0x15t 0x15t 0x15t 0x0t
        0x6t 0x6t 0x6t 0x0t
        0xcdt 0xcdt 0xcdt 0x0t
        0xb5t 0xb5t 0xb5t 0x0t
        0x12t 0x12t 0x12t 0x0t
        0x7et 0x7et 0x7et 0x0t
        0xbbt 0xbbt 0xbbt 0x0t
        0x29t 0x29t 0x29t 0x0t
        0xft 0xft 0xft 0x0t
        0xb8t 0xb8t 0xb8t 0x0t
        0x7t 0x7t 0x7t 0x0t
        0x4t 0x4t 0x4t 0x0t
        0x9bt 0x9bt 0x9bt 0x0t
        0x94t 0x94t 0x94t 0x0t
        0x21t 0x21t 0x21t 0x0t
        0x66t 0x66t 0x66t 0x0t
        0xe6t 0xe6t 0xe6t 0x0t
        0xcet 0xcet 0xcet 0x0t
        0xedt 0xedt 0xedt 0x0t
        0xe7t 0xe7t 0xe7t 0x0t
        0x3bt 0x3bt 0x3bt 0x0t
        0xfet 0xfet 0xfet 0x0t
        0x7ft 0x7ft 0x7ft 0x0t
        0xc5t 0xc5t 0xc5t 0x0t
        0xa4t 0xa4t 0xa4t 0x0t
        0x37t 0x37t 0x37t 0x0t
        0xb1t 0xb1t 0xb1t 0x0t
        0x4ct 0x4ct 0x4ct 0x0t
        0x91t 0x91t 0x91t 0x0t
        0x6et 0x6et 0x6et 0x0t
        0x8dt 0x8dt 0x8dt 0x0t
        0x76t 0x76t 0x76t 0x0t
        0x3t 0x3t 0x3t 0x0t
        0x2dt 0x2dt 0x2dt 0x0t
        0xdet 0xdet 0xdet 0x0t
        0x96t 0x96t 0x96t 0x0t
        0x26t 0x26t 0x26t 0x0t
        0x7dt 0x7dt 0x7dt 0x0t
        0xc6t 0xc6t 0xc6t 0x0t
        0x5ct 0x5ct 0x5ct 0x0t
        0xd3t 0xd3t 0xd3t 0x0t
        0xf2t 0xf2t 0xf2t 0x0t
        0x4ft 0x4ft 0x4ft 0x0t
        0x19t 0x19t 0x19t 0x0t
        0x3ft 0x3ft 0x3ft 0x0t
        0xdct 0xdct 0xdct 0x0t
        0x79t 0x79t 0x79t 0x0t
        0x1dt 0x1dt 0x1dt 0x0t
        0x52t 0x52t 0x52t 0x0t
        0xebt 0xebt 0xebt 0x0t
        0xf3t 0xf3t 0xf3t 0x0t
        0x6dt 0x6dt 0x6dt 0x0t
        0x5et 0x5et 0x5et 0x0t
        0xfbt 0xfbt 0xfbt 0x0t
        0x69t 0x69t 0x69t 0x0t
        0xb2t 0xb2t 0xb2t 0x0t
        0xf0t 0xf0t 0xf0t 0x0t
        0x31t 0x31t 0x31t 0x0t
        0xct 0xct 0xct 0x0t
        0xd4t 0xd4t 0xd4t 0x0t
        0xcft 0xcft 0xcft 0x0t
        0x8ct 0x8ct 0x8ct 0x0t
        0xe2t 0xe2t 0xe2t 0x0t
        0x75t 0x75t 0x75t 0x0t
        0xa9t 0xa9t 0xa9t 0x0t
        0x4at 0x4at 0x4at 0x0t
        0x57t 0x57t 0x57t 0x0t
        0x84t 0x84t 0x84t 0x0t
        0x11t 0x11t 0x11t 0x0t
        0x45t 0x45t 0x45t 0x0t
        0x1bt 0x1bt 0x1bt 0x0t
        0xf5t 0xf5t 0xf5t 0x0t
        0xe4t 0xe4t 0xe4t 0x0t
        0xet 0xet 0xet 0x0t
        0x73t 0x73t 0x73t 0x0t
        0xaat 0xaat 0xaat 0x0t
        0xf1t 0xf1t 0xf1t 0x0t
        0xddt 0xddt 0xddt 0x0t
        0x59t 0x59t 0x59t 0x0t
        0x14t 0x14t 0x14t 0x0t
        0x6ct 0x6ct 0x6ct 0x0t
        0x92t 0x92t 0x92t 0x0t
        0x54t 0x54t 0x54t 0x0t
        0xd0t 0xd0t 0xd0t 0x0t
        0x78t 0x78t 0x78t 0x0t
        0x70t 0x70t 0x70t 0x0t
        0xe3t 0xe3t 0xe3t 0x0t
        0x49t 0x49t 0x49t 0x0t
        0x80t 0x80t 0x80t 0x0t
        0x50t 0x50t 0x50t 0x0t
        0xa7t 0xa7t 0xa7t 0x0t
        0xf6t 0xf6t 0xf6t 0x0t
        0x77t 0x77t 0x77t 0x0t
        0x93t 0x93t 0x93t 0x0t
        0x86t 0x86t 0x86t 0x0t
        0x83t 0x83t 0x83t 0x0t
        0x2at 0x2at 0x2at 0x0t
        0xc7t 0xc7t 0xc7t 0x0t
        0x5bt 0x5bt 0x5bt 0x0t
        0xe9t 0xe9t 0xe9t 0x0t
        0xeet 0xeet 0xeet 0x0t
        0x8ft 0x8ft 0x8ft 0x0t
        0x1t 0x1t 0x1t 0x0t
        0x3dt 0x3dt 0x3dt 0x0t
    .end array-data

    .line 152
    :array_4
    .array-data 0x4
        0x38t 0x38t 0x0t 0x38t
        0x41t 0x41t 0x0t 0x41t
        0x16t 0x16t 0x0t 0x16t
        0x76t 0x76t 0x0t 0x76t
        0xd9t 0xd9t 0x0t 0xd9t
        0x93t 0x93t 0x0t 0x93t
        0x60t 0x60t 0x0t 0x60t
        0xf2t 0xf2t 0x0t 0xf2t
        0x72t 0x72t 0x0t 0x72t
        0xc2t 0xc2t 0x0t 0xc2t
        0xabt 0xabt 0x0t 0xabt
        0x9at 0x9at 0x0t 0x9at
        0x75t 0x75t 0x0t 0x75t
        0x6t 0x6t 0x0t 0x6t
        0x57t 0x57t 0x0t 0x57t
        0xa0t 0xa0t 0x0t 0xa0t
        0x91t 0x91t 0x0t 0x91t
        0xf7t 0xf7t 0x0t 0xf7t
        0xb5t 0xb5t 0x0t 0xb5t
        0xc9t 0xc9t 0x0t 0xc9t
        0xa2t 0xa2t 0x0t 0xa2t
        0x8ct 0x8ct 0x0t 0x8ct
        0xd2t 0xd2t 0x0t 0xd2t
        0x90t 0x90t 0x0t 0x90t
        0xf6t 0xf6t 0x0t 0xf6t
        0x7t 0x7t 0x0t 0x7t
        0xa7t 0xa7t 0x0t 0xa7t
        0x27t 0x27t 0x0t 0x27t
        0x8et 0x8et 0x0t 0x8et
        0xb2t 0xb2t 0x0t 0xb2t
        0x49t 0x49t 0x0t 0x49t
        0xdet 0xdet 0x0t 0xdet
        0x43t 0x43t 0x0t 0x43t
        0x5ct 0x5ct 0x0t 0x5ct
        0xd7t 0xd7t 0x0t 0xd7t
        0xc7t 0xc7t 0x0t 0xc7t
        0x3et 0x3et 0x0t 0x3et
        0xf5t 0xf5t 0x0t 0xf5t
        0x8ft 0x8ft 0x0t 0x8ft
        0x67t 0x67t 0x0t 0x67t
        0x1ft 0x1ft 0x0t 0x1ft
        0x18t 0x18t 0x0t 0x18t
        0x6et 0x6et 0x0t 0x6et
        0xaft 0xaft 0x0t 0xaft
        0x2ft 0x2ft 0x0t 0x2ft
        0xe2t 0xe2t 0x0t 0xe2t
        0x85t 0x85t 0x0t 0x85t
        0xdt 0xdt 0x0t 0xdt
        0x53t 0x53t 0x0t 0x53t
        0xf0t 0xf0t 0x0t 0xf0t
        0x9ct 0x9ct 0x0t 0x9ct
        0x65t 0x65t 0x0t 0x65t
        0xeat 0xeat 0x0t 0xeat
        0xa3t 0xa3t 0x0t 0xa3t
        0xaet 0xaet 0x0t 0xaet
        0x9et 0x9et 0x0t 0x9et
        0xect 0xect 0x0t 0xect
        0x80t 0x80t 0x0t 0x80t
        0x2dt 0x2dt 0x0t 0x2dt
        0x6bt 0x6bt 0x0t 0x6bt
        0xa8t 0xa8t 0x0t 0xa8t
        0x2bt 0x2bt 0x0t 0x2bt
        0x36t 0x36t 0x0t 0x36t
        0xa6t 0xa6t 0x0t 0xa6t
        0xc5t 0xc5t 0x0t 0xc5t
        0x86t 0x86t 0x0t 0x86t
        0x4dt 0x4dt 0x0t 0x4dt
        0x33t 0x33t 0x0t 0x33t
        0xfdt 0xfdt 0x0t 0xfdt
        0x66t 0x66t 0x0t 0x66t
        0x58t 0x58t 0x0t 0x58t
        0x96t 0x96t 0x0t 0x96t
        0x3at 0x3at 0x0t 0x3at
        0x9t 0x9t 0x0t 0x9t
        0x95t 0x95t 0x0t 0x95t
        0x10t 0x10t 0x0t 0x10t
        0x78t 0x78t 0x0t 0x78t
        0xd8t 0xd8t 0x0t 0xd8t
        0x42t 0x42t 0x0t 0x42t
        0xcct 0xcct 0x0t 0xcct
        0xeft 0xeft 0x0t 0xeft
        0x26t 0x26t 0x0t 0x26t
        0xe5t 0xe5t 0x0t 0xe5t
        0x61t 0x61t 0x0t 0x61t
        0x1at 0x1at 0x0t 0x1at
        0x3ft 0x3ft 0x0t 0x3ft
        0x3bt 0x3bt 0x0t 0x3bt
        0x82t 0x82t 0x0t 0x82t
        0xb6t 0xb6t 0x0t 0xb6t
        0xdbt 0xdbt 0x0t 0xdbt
        0xd4t 0xd4t 0x0t 0xd4t
        0x98t 0x98t 0x0t 0x98t
        0xe8t 0xe8t 0x0t 0xe8t
        0x8bt 0x8bt 0x0t 0x8bt
        0x2t 0x2t 0x0t 0x2t
        0xebt 0xebt 0x0t 0xebt
        0xat 0xat 0x0t 0xat
        0x2ct 0x2ct 0x0t 0x2ct
        0x1dt 0x1dt 0x0t 0x1dt
        0xb0t 0xb0t 0x0t 0xb0t
        0x6ft 0x6ft 0x0t 0x6ft
        0x8dt 0x8dt 0x0t 0x8dt
        0x88t 0x88t 0x0t 0x88t
        0xet 0xet 0x0t 0xet
        0x19t 0x19t 0x0t 0x19t
        0x87t 0x87t 0x0t 0x87t
        0x4et 0x4et 0x0t 0x4et
        0xbt 0xbt 0x0t 0xbt
        0xa9t 0xa9t 0x0t 0xa9t
        0xct 0xct 0x0t 0xct
        0x79t 0x79t 0x0t 0x79t
        0x11t 0x11t 0x0t 0x11t
        0x7ft 0x7ft 0x0t 0x7ft
        0x22t 0x22t 0x0t 0x22t
        0xe7t 0xe7t 0x0t 0xe7t
        0x59t 0x59t 0x0t 0x59t
        0xe1t 0xe1t 0x0t 0xe1t
        0xdat 0xdat 0x0t 0xdat
        0x3dt 0x3dt 0x0t 0x3dt
        0xc8t 0xc8t 0x0t 0xc8t
        0x12t 0x12t 0x0t 0x12t
        0x4t 0x4t 0x0t 0x4t
        0x74t 0x74t 0x0t 0x74t
        0x54t 0x54t 0x0t 0x54t
        0x30t 0x30t 0x0t 0x30t
        0x7et 0x7et 0x0t 0x7et
        0xb4t 0xb4t 0x0t 0xb4t
        0x28t 0x28t 0x0t 0x28t
        0x55t 0x55t 0x0t 0x55t
        0x68t 0x68t 0x0t 0x68t
        0x50t 0x50t 0x0t 0x50t
        0xbet 0xbet 0x0t 0xbet
        0xd0t 0xd0t 0x0t 0xd0t
        0xc4t 0xc4t 0x0t 0xc4t
        0x31t 0x31t 0x0t 0x31t
        0xcbt 0xcbt 0x0t 0xcbt
        0x2at 0x2at 0x0t 0x2at
        0xadt 0xadt 0x0t 0xadt
        0xft 0xft 0x0t 0xft
        0xcat 0xcat 0x0t 0xcat
        0x70t 0x70t 0x0t 0x70t
        0xfft 0xfft 0x0t 0xfft
        0x32t 0x32t 0x0t 0x32t
        0x69t 0x69t 0x0t 0x69t
        0x8t 0x8t 0x0t 0x8t
        0x62t 0x62t 0x0t 0x62t
        0x0t 0x0t 0x0t 0x0t
        0x24t 0x24t 0x0t 0x24t
        0xd1t 0xd1t 0x0t 0xd1t
        0xfbt 0xfbt 0x0t 0xfbt
        0xbat 0xbat 0x0t 0xbat
        0xedt 0xedt 0x0t 0xedt
        0x45t 0x45t 0x0t 0x45t
        0x81t 0x81t 0x0t 0x81t
        0x73t 0x73t 0x0t 0x73t
        0x6dt 0x6dt 0x0t 0x6dt
        0x84t 0x84t 0x0t 0x84t
        0x9ft 0x9ft 0x0t 0x9ft
        0xeet 0xeet 0x0t 0xeet
        0x4at 0x4at 0x0t 0x4at
        0xc3t 0xc3t 0x0t 0xc3t
        0x2et 0x2et 0x0t 0x2et
        0xc1t 0xc1t 0x0t 0xc1t
        0x1t 0x1t 0x0t 0x1t
        0xe6t 0xe6t 0x0t 0xe6t
        0x25t 0x25t 0x0t 0x25t
        0x48t 0x48t 0x0t 0x48t
        0x99t 0x99t 0x0t 0x99t
        0xb9t 0xb9t 0x0t 0xb9t
        0xb3t 0xb3t 0x0t 0xb3t
        0x7bt 0x7bt 0x0t 0x7bt
        0xf9t 0xf9t 0x0t 0xf9t
        0xcet 0xcet 0x0t 0xcet
        0xbft 0xbft 0x0t 0xbft
        0xdft 0xdft 0x0t 0xdft
        0x71t 0x71t 0x0t 0x71t
        0x29t 0x29t 0x0t 0x29t
        0xcdt 0xcdt 0x0t 0xcdt
        0x6ct 0x6ct 0x0t 0x6ct
        0x13t 0x13t 0x0t 0x13t
        0x64t 0x64t 0x0t 0x64t
        0x9bt 0x9bt 0x0t 0x9bt
        0x63t 0x63t 0x0t 0x63t
        0x9dt 0x9dt 0x0t 0x9dt
        0xc0t 0xc0t 0x0t 0xc0t
        0x4bt 0x4bt 0x0t 0x4bt
        0xb7t 0xb7t 0x0t 0xb7t
        0xa5t 0xa5t 0x0t 0xa5t
        0x89t 0x89t 0x0t 0x89t
        0x5ft 0x5ft 0x0t 0x5ft
        0xb1t 0xb1t 0x0t 0xb1t
        0x17t 0x17t 0x0t 0x17t
        0xf4t 0xf4t 0x0t 0xf4t
        0xbct 0xbct 0x0t 0xbct
        0xd3t 0xd3t 0x0t 0xd3t
        0x46t 0x46t 0x0t 0x46t
        0xcft 0xcft 0x0t 0xcft
        0x37t 0x37t 0x0t 0x37t
        0x5et 0x5et 0x0t 0x5et
        0x47t 0x47t 0x0t 0x47t
        0x94t 0x94t 0x0t 0x94t
        0xfat 0xfat 0x0t 0xfat
        0xfct 0xfct 0x0t 0xfct
        0x5bt 0x5bt 0x0t 0x5bt
        0x97t 0x97t 0x0t 0x97t
        0xfet 0xfet 0x0t 0xfet
        0x5at 0x5at 0x0t 0x5at
        0xact 0xact 0x0t 0xact
        0x3ct 0x3ct 0x0t 0x3ct
        0x4ct 0x4ct 0x0t 0x4ct
        0x3t 0x3t 0x0t 0x3t
        0x35t 0x35t 0x0t 0x35t
        0xf3t 0xf3t 0x0t 0xf3t
        0x23t 0x23t 0x0t 0x23t
        0xb8t 0xb8t 0x0t 0xb8t
        0x5dt 0x5dt 0x0t 0x5dt
        0x6at 0x6at 0x0t 0x6at
        0x92t 0x92t 0x0t 0x92t
        0xd5t 0xd5t 0x0t 0xd5t
        0x21t 0x21t 0x0t 0x21t
        0x44t 0x44t 0x0t 0x44t
        0x51t 0x51t 0x0t 0x51t
        0xc6t 0xc6t 0x0t 0xc6t
        0x7dt 0x7dt 0x0t 0x7dt
        0x39t 0x39t 0x0t 0x39t
        0x83t 0x83t 0x0t 0x83t
        0xdct 0xdct 0x0t 0xdct
        0xaat 0xaat 0x0t 0xaat
        0x7ct 0x7ct 0x0t 0x7ct
        0x77t 0x77t 0x0t 0x77t
        0x56t 0x56t 0x0t 0x56t
        0x5t 0x5t 0x0t 0x5t
        0x1bt 0x1bt 0x0t 0x1bt
        0xa4t 0xa4t 0x0t 0xa4t
        0x15t 0x15t 0x0t 0x15t
        0x34t 0x34t 0x0t 0x34t
        0x1et 0x1et 0x0t 0x1et
        0x1ct 0x1ct 0x0t 0x1ct
        0xf8t 0xf8t 0x0t 0xf8t
        0x52t 0x52t 0x0t 0x52t
        0x20t 0x20t 0x0t 0x20t
        0x14t 0x14t 0x0t 0x14t
        0xe9t 0xe9t 0x0t 0xe9t
        0xbdt 0xbdt 0x0t 0xbdt
        0xddt 0xddt 0x0t 0xddt
        0xe4t 0xe4t 0x0t 0xe4t
        0xa1t 0xa1t 0x0t 0xa1t
        0xe0t 0xe0t 0x0t 0xe0t
        0x8at 0x8at 0x0t 0x8at
        0xf1t 0xf1t 0x0t 0xf1t
        0xd6t 0xd6t 0x0t 0xd6t
        0x7at 0x7at 0x0t 0x7at
        0xbbt 0xbbt 0x0t 0xbbt
        0xe3t 0xe3t 0x0t 0xe3t
        0x40t 0x40t 0x0t 0x40t
        0x4ft 0x4ft 0x0t 0x4ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 552
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->initialised:Z

    .line 19
    const/16 v0, 0x60

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    .line 21
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    .line 553
    return-void
.end method

.method private bytes2int([BI)I
    .locals 4
    .parameter "src"
    .parameter "offset"

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 247
    .local v1, word:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 248
    shl-int/lit8 v2, v1, 0x8

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v1, v2, v3

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return v1
.end method

.method private camelliaF2([I[II)V
    .locals 12
    .parameter "s"
    .parameter "skey"
    .parameter "keyoff"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 263
    aget v4, p1, v7

    add-int/lit8 v5, p3, 0x0

    aget v5, p2, v5

    xor-int v0, v4, v5

    .line 264
    .local v0, t1:I
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4_4404:[I

    and-int/lit16 v5, v0, 0xff

    aget v2, v4, v5

    .line 265
    .local v2, u:I
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3_3033:[I

    ushr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v2, v4

    .line 266
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2_0222:[I

    ushr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v2, v4

    .line 267
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1_1110:[I

    ushr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v2, v4

    .line 268
    aget v4, p1, v8

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    xor-int v1, v4, v5

    .line 269
    .local v1, t2:I
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1_1110:[I

    and-int/lit16 v5, v1, 0xff

    aget v3, v4, v5

    .line 270
    .local v3, v:I
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4_4404:[I

    ushr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    .line 271
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3_3033:[I

    ushr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    .line 272
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2_0222:[I

    ushr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    .line 274
    aget v4, p1, v9

    xor-int v5, v2, v3

    xor-int/2addr v4, v5

    aput v4, p1, v9

    .line 275
    aget v4, p1, v10

    xor-int v5, v2, v3

    invoke-static {v2, v11}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->rightRotate(II)I

    move-result v6

    xor-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, p1, v10

    .line 277
    aget v4, p1, v9

    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    xor-int v0, v4, v5

    .line 278
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4_4404:[I

    and-int/lit16 v5, v0, 0xff

    aget v2, v4, v5

    .line 279
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3_3033:[I

    ushr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v2, v4

    .line 280
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2_0222:[I

    ushr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v2, v4

    .line 281
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1_1110:[I

    ushr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v2, v4

    .line 282
    aget v4, p1, v10

    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    xor-int v1, v4, v5

    .line 283
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1_1110:[I

    and-int/lit16 v5, v1, 0xff

    aget v3, v4, v5

    .line 284
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4_4404:[I

    ushr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    .line 285
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3_3033:[I

    ushr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    .line 286
    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2_0222:[I

    ushr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    .line 288
    aget v4, p1, v7

    xor-int v5, v2, v3

    xor-int/2addr v4, v5

    aput v4, p1, v7

    .line 289
    aget v4, p1, v8

    xor-int v5, v2, v3

    invoke-static {v2, v11}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->rightRotate(II)I

    move-result v6

    xor-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, p1, v8

    .line 290
    return-void
.end method

.method private camelliaFLs([I[II)V
    .locals 7
    .parameter "s"
    .parameter "fkey"
    .parameter "keyoff"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 294
    aget v0, p1, v3

    aget v1, p1, v4

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    and-int/2addr v1, v2

    invoke-static {v1, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->leftRotate(II)I

    move-result v1

    xor-int/2addr v0, v1

    aput v0, p1, v3

    .line 295
    aget v0, p1, v4

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    aget v2, p1, v3

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v4

    .line 297
    aget v0, p1, v5

    add-int/lit8 v1, p3, 0x3

    aget v1, p2, v1

    aget v2, p1, v6

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v5

    .line 298
    aget v0, p1, v6

    add-int/lit8 v1, p3, 0x2

    aget v1, p2, v1

    aget v2, p1, v5

    and-int/2addr v1, v2

    invoke-static {v1, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->leftRotate(II)I

    move-result v1

    xor-int/2addr v0, v1

    aput v0, p1, v6

    .line 299
    return-void
.end method

.method private static decroldq(I[II[II)V
    .locals 4
    .parameter "rot"
    .parameter "ki"
    .parameter "ioff"
    .parameter "ko"
    .parameter "ooff"

    .prologue
    .line 212
    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 213
    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 214
    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 215
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 216
    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    .line 217
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    .line 218
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    .line 219
    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    .line 220
    return-void
.end method

.method private static decroldqo32(I[II[II)V
    .locals 4
    .parameter "rot"
    .parameter "ki"
    .parameter "ioff"
    .parameter "ko"
    .parameter "ooff"

    .prologue
    .line 234
    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 235
    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 236
    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 237
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 238
    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    .line 239
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    .line 240
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    .line 241
    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    .line 242
    return-void
.end method

.method private int2bytes(I[BI)V
    .locals 3
    .parameter "word"
    .parameter "dst"
    .parameter "offset"

    .prologue
    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 255
    rsub-int/lit8 v1, v0, 0x3

    add-int/2addr v1, p3

    int-to-byte v2, p1

    aput-byte v2, p2, v1

    .line 256
    ushr-int/lit8 p1, p1, 0x8

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    return-void
.end method

.method private static leftRotate(II)I
    .locals 2
    .parameter "x"
    .parameter "s"

    .prologue
    .line 197
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private processBlock128([BI[BI)I
    .locals 9
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 488
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 489
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p2

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v2

    aput v2, v1, v0

    .line 490
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v1, v0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-direct {p0, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 494
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-direct {p0, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 495
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 496
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-direct {p0, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaFLs([I[II)V

    .line 497
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0xc

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 498
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x10

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 499
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x14

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 500
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-direct {p0, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaFLs([I[II)V

    .line 501
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x18

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 502
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x1c

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 503
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x20

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 505
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v1, v7

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v7

    .line 506
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v1, v8

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v8

    .line 507
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v1, v5

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v5

    .line 508
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v1, v6

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v6

    .line 510
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v1, v1, v7

    invoke-direct {p0, v1, p3, p4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    .line 511
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v1, v1, v8

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    .line 512
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v1, v1, v5

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    .line 513
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v1, v1, v6

    add-int/lit8 v2, p4, 0xc

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    .line 515
    const/16 v1, 0x10

    return v1
.end method

.method private processBlock192or256([BI[BI)I
    .locals 9
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 519
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 520
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p2

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v2

    aput v2, v1, v0

    .line 521
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v1, v0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-direct {p0, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 525
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-direct {p0, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 526
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 527
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-direct {p0, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaFLs([I[II)V

    .line 528
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0xc

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 529
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x10

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 530
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x14

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 531
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-direct {p0, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaFLs([I[II)V

    .line 532
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x18

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 533
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x1c

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 534
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x20

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 535
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaFLs([I[II)V

    .line 536
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x24

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 537
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x28

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 538
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x2c

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 540
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v1, v7

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v7

    .line 541
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v1, v8

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v8

    .line 542
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v1, v5

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v5

    .line 543
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v1, v6

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v6

    .line 545
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v1, v1, v7

    invoke-direct {p0, v1, p3, p4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    .line 546
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v1, v1, v8

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    .line 547
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v1, v1, v5

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    .line 548
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v1, v1, v6

    add-int/lit8 v2, p4, 0xc

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    .line 549
    const/16 v1, 0x10

    return v1
.end method

.method private static rightRotate(II)I
    .locals 2
    .parameter "x"
    .parameter "s"

    .prologue
    .line 193
    ushr-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    shl-int v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static roldq(I[II[II)V
    .locals 4
    .parameter "rot"
    .parameter "ki"
    .parameter "ioff"
    .parameter "ko"
    .parameter "ooff"

    .prologue
    .line 201
    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 202
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 203
    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 204
    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 205
    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    .line 206
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    .line 207
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    .line 208
    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    .line 209
    return-void
.end method

.method private static roldqo32(I[II[II)V
    .locals 4
    .parameter "rot"
    .parameter "ki"
    .parameter "ioff"
    .parameter "ko"
    .parameter "ooff"

    .prologue
    .line 223
    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 224
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 225
    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 226
    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 227
    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    .line 228
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    .line 229
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    .line 230
    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    .line 231
    return-void
.end method

.method private setKey(Z[B)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 302
    const/16 v0, 0x8

    new-array v2, v0, [I

    .line 303
    new-array v3, v8, [I

    .line 304
    new-array v4, v8, [I

    .line 305
    new-array v5, v8, [I

    .line 307
    array-length v0, p2

    sparse-switch v0, :sswitch_data_0

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key sizes are only 16/24/32 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :sswitch_0
    iput-boolean v9, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    .line 310
    invoke-direct {p0, p2, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v1

    .line 311
    invoke-direct {p0, p2, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v9

    .line 312
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v10

    .line 313
    const/16 v0, 0xc

    invoke-direct {p0, p2, v0}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v11

    .line 314
    const/4 v0, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x7

    aput v1, v2, v7

    aput v1, v2, v6

    aput v1, v2, v0

    aput v1, v2, v8

    :goto_0
    move v0, v1

    .line 342
    :goto_1
    if-ge v0, v8, :cond_0

    .line 343
    aget v6, v2, v0

    add-int/lit8 v7, v0, 0x4

    aget v7, v2, v7

    xor-int/2addr v6, v7

    aput v6, v3, v0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    :sswitch_1
    invoke-direct {p0, p2, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v1

    .line 318
    invoke-direct {p0, p2, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v9

    .line 319
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v10

    .line 320
    const/16 v0, 0xc

    invoke-direct {p0, p2, v0}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v11

    .line 321
    const/16 v0, 0x10

    invoke-direct {p0, p2, v0}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v8

    .line 322
    const/4 v0, 0x5

    const/16 v6, 0x14

    invoke-direct {p0, p2, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v2, v0

    .line 323
    const/4 v0, 0x6

    aget v6, v2, v8

    xor-int/lit8 v6, v6, -0x1

    aput v6, v2, v0

    .line 324
    const/4 v0, 0x7

    const/4 v6, 0x5

    aget v6, v2, v6

    xor-int/lit8 v6, v6, -0x1

    aput v6, v2, v0

    .line 325
    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    goto :goto_0

    .line 328
    :sswitch_2
    invoke-direct {p0, p2, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v1

    .line 329
    invoke-direct {p0, p2, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v9

    .line 330
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v10

    .line 331
    const/16 v0, 0xc

    invoke-direct {p0, p2, v0}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v11

    .line 332
    const/16 v0, 0x10

    invoke-direct {p0, p2, v0}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v8

    .line 333
    const/4 v0, 0x5

    const/16 v6, 0x14

    invoke-direct {p0, p2, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v2, v0

    .line 334
    const/4 v0, 0x6

    const/16 v6, 0x18

    invoke-direct {p0, p2, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v2, v0

    .line 335
    const/4 v0, 0x7

    const/16 v6, 0x1c

    invoke-direct {p0, p2, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v2, v0

    .line 336
    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    goto/16 :goto_0

    .line 346
    :cond_0
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SIGMA:[I

    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    move v0, v1

    .line 347
    :goto_2
    if-ge v0, v8, :cond_1

    .line 348
    aget v6, v3, v0

    aget v7, v2, v0

    xor-int/2addr v6, v7

    aput v6, v3, v0

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 350
    :cond_1
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SIGMA:[I

    invoke-direct {p0, v3, v0, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 352
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    if-eqz v0, :cond_3

    .line 353
    if-eqz p1, :cond_2

    .line 355
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v4, v2, v1

    aput v4, v0, v1

    .line 356
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v4, v2, v9

    aput v4, v0, v9

    .line 357
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v4, v2, v10

    aput v4, v0, v10

    .line 358
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v4, v2, v11

    aput v4, v0, v11

    .line 359
    const/16 v0, 0xf

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-static {v0, v2, v1, v4, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 360
    const/16 v0, 0x1e

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0xc

    invoke-static {v0, v2, v1, v4, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 361
    const/16 v0, 0xf

    invoke-static {v0, v2, v1, v5, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 362
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x12

    aget v6, v5, v10

    aput v6, v0, v4

    .line 363
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x13

    aget v6, v5, v11

    aput v6, v0, v4

    .line 364
    const/16 v0, 0x11

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v2, v1, v4, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 365
    const/16 v0, 0x11

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x18

    invoke-static {v0, v2, v1, v4, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 366
    const/16 v0, 0x11

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x20

    invoke-static {v0, v2, v1, v4, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 368
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v3, v1

    aput v2, v0, v1

    .line 369
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v3, v9

    aput v2, v0, v9

    .line 370
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v3, v10

    aput v2, v0, v10

    .line 371
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v3, v11

    aput v2, v0, v11

    .line 372
    const/16 v0, 0xf

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x8

    invoke-static {v0, v3, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 373
    const/16 v0, 0xf

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v3, v1, v2, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 374
    const/16 v0, 0xf

    invoke-static {v0, v3, v1, v5, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 375
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x10

    aget v4, v5, v1

    aput v4, v0, v2

    .line 376
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x11

    aget v4, v5, v9

    aput v4, v0, v2

    .line 377
    const/16 v0, 0xf

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x14

    invoke-static {v0, v3, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 378
    const/16 v0, 0x22

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x1c

    invoke-static {v0, v3, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    .line 379
    const/16 v0, 0x11

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    invoke-static {v0, v3, v1, v2, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 485
    :goto_3
    return-void

    .line 383
    :cond_2
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v4, v2, v1

    aput v4, v0, v8

    .line 384
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x5

    aget v6, v2, v9

    aput v6, v0, v4

    .line 385
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x6

    aget v6, v2, v10

    aput v6, v0, v4

    .line 386
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x7

    aget v6, v2, v11

    aput v6, v0, v4

    .line 387
    const/16 v0, 0xf

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x1c

    invoke-static {v0, v2, v1, v4, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 388
    const/16 v0, 0x1e

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x14

    invoke-static {v0, v2, v1, v4, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 389
    const/16 v0, 0xf

    invoke-static {v0, v2, v1, v5, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 390
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x10

    aget v6, v5, v1

    aput v6, v0, v4

    .line 391
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x11

    aget v6, v5, v9

    aput v6, v0, v4

    .line 392
    const/16 v0, 0x11

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v2, v1, v4, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 393
    const/16 v0, 0x11

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x8

    invoke-static {v0, v2, v1, v4, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 394
    const/16 v0, 0x11

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-static {v0, v2, v1, v4, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 396
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x22

    aget v4, v3, v1

    aput v4, v0, v2

    .line 397
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x23

    aget v4, v3, v9

    aput v4, v0, v2

    .line 398
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x20

    aget v4, v3, v10

    aput v4, v0, v2

    .line 399
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x21

    aget v4, v3, v11

    aput v4, v0, v2

    .line 400
    const/16 v0, 0xf

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x18

    invoke-static {v0, v3, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 401
    const/16 v0, 0xf

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v3, v1, v2, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 402
    const/16 v0, 0xf

    invoke-static {v0, v3, v1, v5, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 403
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x12

    aget v4, v5, v10

    aput v4, v0, v2

    .line 404
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x13

    aget v4, v5, v11

    aput v4, v0, v2

    .line 405
    const/16 v0, 0xf

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0xc

    invoke-static {v0, v3, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 406
    const/16 v0, 0x22

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-static {v0, v3, v1, v2, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldqo32(I[II[II)V

    .line 407
    const/16 v0, 0x11

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    invoke-static {v0, v3, v1, v2, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    goto/16 :goto_3

    :cond_3
    move v0, v1

    .line 411
    :goto_4
    if-ge v0, v8, :cond_4

    .line 412
    aget v5, v3, v0

    add-int/lit8 v6, v0, 0x4

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v4, v0

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 414
    :cond_4
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->SIGMA:[I

    const/16 v5, 0x8

    invoke-direct {p0, v4, v0, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    .line 416
    if-eqz p1, :cond_5

    .line 418
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v5, v2, v1

    aput v5, v0, v1

    .line 419
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v5, v2, v9

    aput v5, v0, v9

    .line 420
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v5, v2, v10

    aput v5, v0, v10

    .line 421
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v5, v2, v11

    aput v5, v0, v11

    .line 422
    const/16 v0, 0x2d

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x10

    invoke-static {v0, v2, v1, v5, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    .line 423
    const/16 v0, 0xf

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v2, v1, v5, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 424
    const/16 v0, 0x11

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x20

    invoke-static {v0, v2, v1, v5, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 425
    const/16 v0, 0x22

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x2c

    invoke-static {v0, v2, v1, v5, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    .line 427
    const/16 v0, 0xf

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-static {v0, v2, v8, v5, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 428
    const/16 v0, 0xf

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v2, v8, v5, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 429
    const/16 v0, 0x1e

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x18

    invoke-static {v0, v2, v8, v5, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 430
    const/16 v0, 0x22

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x24

    invoke-static {v0, v2, v8, v5, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    .line 432
    const/16 v0, 0xf

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v5, 0x8

    invoke-static {v0, v3, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 433
    const/16 v0, 0x1e

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v5, 0x14

    invoke-static {v0, v3, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 435
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/16 v2, 0x8

    aget v5, v3, v9

    aput v5, v0, v2

    .line 436
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/16 v2, 0x9

    aget v5, v3, v10

    aput v5, v0, v2

    .line 437
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/16 v2, 0xa

    aget v5, v3, v11

    aput v5, v0, v2

    .line 438
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/16 v2, 0xb

    aget v5, v3, v1

    aput v5, v0, v2

    .line 439
    const/16 v0, 0x31

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v5, 0x28

    invoke-static {v0, v3, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    .line 442
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v4, v1

    aput v2, v0, v1

    .line 443
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v4, v9

    aput v2, v0, v9

    .line 444
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v4, v10

    aput v2, v0, v10

    .line 445
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v4, v11

    aput v2, v0, v11

    .line 446
    const/16 v0, 0x1e

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0xc

    invoke-static {v0, v4, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 447
    const/16 v0, 0x1e

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x1c

    invoke-static {v0, v4, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    .line 448
    const/16 v0, 0x33

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    invoke-static {v0, v4, v1, v2, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    goto/16 :goto_3

    .line 452
    :cond_5
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v5, v2, v1

    aput v5, v0, v8

    .line 453
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v5, 0x5

    aget v6, v2, v9

    aput v6, v0, v5

    .line 454
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v5, 0x6

    aget v6, v2, v10

    aput v6, v0, v5

    .line 455
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v5, 0x7

    aget v6, v2, v11

    aput v6, v0, v5

    .line 456
    const/16 v0, 0x2d

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x1c

    invoke-static {v0, v2, v1, v5, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldqo32(I[II[II)V

    .line 457
    const/16 v0, 0xf

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v2, v1, v5, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 458
    const/16 v0, 0x11

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0xc

    invoke-static {v0, v2, v1, v5, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 459
    const/16 v0, 0x22

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-static {v0, v2, v1, v5, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldqo32(I[II[II)V

    .line 461
    const/16 v0, 0xf

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x28

    invoke-static {v0, v2, v8, v5, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 462
    const/16 v0, 0xf

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/16 v6, 0x8

    invoke-static {v0, v2, v8, v5, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 463
    const/16 v0, 0x1e

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x14

    invoke-static {v0, v2, v8, v5, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 464
    const/16 v0, 0x22

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x8

    invoke-static {v0, v2, v8, v5, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldqo32(I[II[II)V

    .line 466
    const/16 v0, 0xf

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v5, 0x24

    invoke-static {v0, v3, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 467
    const/16 v0, 0x1e

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v5, 0x18

    invoke-static {v0, v3, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 469
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    aget v2, v3, v9

    aput v2, v0, v10

    .line 470
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    aget v2, v3, v10

    aput v2, v0, v11

    .line 471
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    aget v2, v3, v11

    aput v2, v0, v1

    .line 472
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    aget v2, v3, v1

    aput v2, v0, v9

    .line 473
    const/16 v0, 0x31

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-static {v0, v3, v1, v2, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldqo32(I[II[II)V

    .line 476
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x2e

    aget v3, v4, v1

    aput v3, v0, v2

    .line 477
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x2f

    aget v3, v4, v9

    aput v3, v0, v2

    .line 478
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x2c

    aget v3, v4, v10

    aput v3, v0, v2

    .line 479
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x2d

    aget v3, v4, v11

    aput v3, v0, v2

    .line 480
    const/16 v0, 0x1e

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x20

    invoke-static {v0, v4, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 481
    const/16 v0, 0x1e

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x10

    invoke-static {v0, v4, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    .line 482
    const/16 v0, 0x33

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    invoke-static {v0, v4, v1, v2, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    goto/16 :goto_3

    .line 307
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x18 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    const-string v0, "Camellia"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 570
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 557
    instance-of v0, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only simple KeyParameter expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_0
    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->setKey(Z[B)V

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->initialised:Z

    .line 563
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 575
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->initialised:Z

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Camellia engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 580
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 584
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_2
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    if-eqz v0, :cond_3

    .line 588
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->processBlock128([BI[BI)I

    move-result v0

    .line 590
    :goto_0
    return v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;->processBlock192or256([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method
