.class public Lmyorg/bouncycastle/crypto/engines/AESEngine;
.super Ljava/lang/Object;
.source "AESEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final S:[B

.field private static final Si:[B

.field private static final T0:[I

.field private static final Tinv0:[I

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private ROUNDS:I

.field private WorkingKey:[[I

.field private forEncryption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 32
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    .line 73
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    .line 114
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->rcon:[I

    .line 121
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    .line 161
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    return-void

    .line 32
    :array_0
    .array-data 0x1
        0x63t
        0x7ct
        0x77t
        0x7bt
        0xf2t
        0x6bt
        0x6ft
        0xc5t
        0x30t
        0x1t
        0x67t
        0x2bt
        0xfet
        0xd7t
        0xabt
        0x76t
        0xcat
        0x82t
        0xc9t
        0x7dt
        0xfat
        0x59t
        0x47t
        0xf0t
        0xadt
        0xd4t
        0xa2t
        0xaft
        0x9ct
        0xa4t
        0x72t
        0xc0t
        0xb7t
        0xfdt
        0x93t
        0x26t
        0x36t
        0x3ft
        0xf7t
        0xcct
        0x34t
        0xa5t
        0xe5t
        0xf1t
        0x71t
        0xd8t
        0x31t
        0x15t
        0x4t
        0xc7t
        0x23t
        0xc3t
        0x18t
        0x96t
        0x5t
        0x9at
        0x7t
        0x12t
        0x80t
        0xe2t
        0xebt
        0x27t
        0xb2t
        0x75t
        0x9t
        0x83t
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        0xa0t
        0x52t
        0x3bt
        0xd6t
        0xb3t
        0x29t
        0xe3t
        0x2ft
        0x84t
        0x53t
        0xd1t
        0x0t
        0xedt
        0x20t
        0xfct
        0xb1t
        0x5bt
        0x6at
        0xcbt
        0xbet
        0x39t
        0x4at
        0x4ct
        0x58t
        0xcft
        0xd0t
        0xeft
        0xaat
        0xfbt
        0x43t
        0x4dt
        0x33t
        0x85t
        0x45t
        0xf9t
        0x2t
        0x7ft
        0x50t
        0x3ct
        0x9ft
        0xa8t
        0x51t
        0xa3t
        0x40t
        0x8ft
        0x92t
        0x9dt
        0x38t
        0xf5t
        0xbct
        0xb6t
        0xdat
        0x21t
        0x10t
        0xfft
        0xf3t
        0xd2t
        0xcdt
        0xct
        0x13t
        0xect
        0x5ft
        0x97t
        0x44t
        0x17t
        0xc4t
        0xa7t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        0x81t
        0x4ft
        0xdct
        0x22t
        0x2at
        0x90t
        0x88t
        0x46t
        0xeet
        0xb8t
        0x14t
        0xdet
        0x5et
        0xbt
        0xdbt
        0xe0t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        0xc2t
        0xd3t
        0xact
        0x62t
        0x91t
        0x95t
        0xe4t
        0x79t
        0xe7t
        0xc8t
        0x37t
        0x6dt
        0x8dt
        0xd5t
        0x4et
        0xa9t
        0x6ct
        0x56t
        0xf4t
        0xeat
        0x65t
        0x7at
        0xaet
        0x8t
        0xbat
        0x78t
        0x25t
        0x2et
        0x1ct
        0xa6t
        0xb4t
        0xc6t
        0xe8t
        0xddt
        0x74t
        0x1ft
        0x4bt
        0xbdt
        0x8bt
        0x8at
        0x70t
        0x3et
        0xb5t
        0x66t
        0x48t
        0x3t
        0xf6t
        0xet
        0x61t
        0x35t
        0x57t
        0xb9t
        0x86t
        0xc1t
        0x1dt
        0x9et
        0xe1t
        0xf8t
        0x98t
        0x11t
        0x69t
        0xd9t
        0x8et
        0x94t
        0x9bt
        0x1et
        0x87t
        0xe9t
        0xcet
        0x55t
        0x28t
        0xdft
        0x8ct
        0xa1t
        0x89t
        0xdt
        0xbft
        0xe6t
        0x42t
        0x68t
        0x41t
        0x99t
        0x2dt
        0xft
        0xb0t
        0x54t
        0xbbt
        0x16t
    .end array-data

    .line 73
    :array_1
    .array-data 0x1
        0x52t
        0x9t
        0x6at
        0xd5t
        0x30t
        0x36t
        0xa5t
        0x38t
        0xbft
        0x40t
        0xa3t
        0x9et
        0x81t
        0xf3t
        0xd7t
        0xfbt
        0x7ct
        0xe3t
        0x39t
        0x82t
        0x9bt
        0x2ft
        0xfft
        0x87t
        0x34t
        0x8et
        0x43t
        0x44t
        0xc4t
        0xdet
        0xe9t
        0xcbt
        0x54t
        0x7bt
        0x94t
        0x32t
        0xa6t
        0xc2t
        0x23t
        0x3dt
        0xeet
        0x4ct
        0x95t
        0xbt
        0x42t
        0xfat
        0xc3t
        0x4et
        0x8t
        0x2et
        0xa1t
        0x66t
        0x28t
        0xd9t
        0x24t
        0xb2t
        0x76t
        0x5bt
        0xa2t
        0x49t
        0x6dt
        0x8bt
        0xd1t
        0x25t
        0x72t
        0xf8t
        0xf6t
        0x64t
        0x86t
        0x68t
        0x98t
        0x16t
        0xd4t
        0xa4t
        0x5ct
        0xcct
        0x5dt
        0x65t
        0xb6t
        0x92t
        0x6ct
        0x70t
        0x48t
        0x50t
        0xfdt
        0xedt
        0xb9t
        0xdat
        0x5et
        0x15t
        0x46t
        0x57t
        0xa7t
        0x8dt
        0x9dt
        0x84t
        0x90t
        0xd8t
        0xabt
        0x0t
        0x8ct
        0xbct
        0xd3t
        0xat
        0xf7t
        0xe4t
        0x58t
        0x5t
        0xb8t
        0xb3t
        0x45t
        0x6t
        0xd0t
        0x2ct
        0x1et
        0x8ft
        0xcat
        0x3ft
        0xft
        0x2t
        0xc1t
        0xaft
        0xbdt
        0x3t
        0x1t
        0x13t
        0x8at
        0x6bt
        0x3at
        0x91t
        0x11t
        0x41t
        0x4ft
        0x67t
        0xdct
        0xeat
        0x97t
        0xf2t
        0xcft
        0xcet
        0xf0t
        0xb4t
        0xe6t
        0x73t
        0x96t
        0xact
        0x74t
        0x22t
        0xe7t
        0xadt
        0x35t
        0x85t
        0xe2t
        0xf9t
        0x37t
        0xe8t
        0x1ct
        0x75t
        0xdft
        0x6et
        0x47t
        0xf1t
        0x1at
        0x71t
        0x1dt
        0x29t
        0xc5t
        0x89t
        0x6ft
        0xb7t
        0x62t
        0xet
        0xaat
        0x18t
        0xbet
        0x1bt
        0xfct
        0x56t
        0x3et
        0x4bt
        0xc6t
        0xd2t
        0x79t
        0x20t
        0x9at
        0xdbt
        0xc0t
        0xfet
        0x78t
        0xcdt
        0x5at
        0xf4t
        0x1ft
        0xddt
        0xa8t
        0x33t
        0x88t
        0x7t
        0xc7t
        0x31t
        0xb1t
        0x12t
        0x10t
        0x59t
        0x27t
        0x80t
        0xect
        0x5ft
        0x60t
        0x51t
        0x7ft
        0xa9t
        0x19t
        0xb5t
        0x4at
        0xdt
        0x2dt
        0xe5t
        0x7at
        0x9ft
        0x93t
        0xc9t
        0x9ct
        0xeft
        0xa0t
        0xe0t
        0x3bt
        0x4dt
        0xaet
        0x2at
        0xf5t
        0xb0t
        0xc8t
        0xebt
        0xbbt
        0x3ct
        0x83t
        0x53t
        0x99t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        0xbat
        0x77t
        0xd6t
        0x26t
        0xe1t
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    .line 114
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
    .end array-data

    .line 121
    :array_3
    .array-data 0x4
        0xc6t 0x63t 0x63t 0xa5t
        0xf8t 0x7ct 0x7ct 0x84t
        0xeet 0x77t 0x77t 0x99t
        0xf6t 0x7bt 0x7bt 0x8dt
        0xfft 0xf2t 0xf2t 0xdt
        0xd6t 0x6bt 0x6bt 0xbdt
        0xdet 0x6ft 0x6ft 0xb1t
        0x91t 0xc5t 0xc5t 0x54t
        0x60t 0x30t 0x30t 0x50t
        0x2t 0x1t 0x1t 0x3t
        0xcet 0x67t 0x67t 0xa9t
        0x56t 0x2bt 0x2bt 0x7dt
        0xe7t 0xfet 0xfet 0x19t
        0xb5t 0xd7t 0xd7t 0x62t
        0x4dt 0xabt 0xabt 0xe6t
        0xect 0x76t 0x76t 0x9at
        0x8ft 0xcat 0xcat 0x45t
        0x1ft 0x82t 0x82t 0x9dt
        0x89t 0xc9t 0xc9t 0x40t
        0xfat 0x7dt 0x7dt 0x87t
        0xeft 0xfat 0xfat 0x15t
        0xb2t 0x59t 0x59t 0xebt
        0x8et 0x47t 0x47t 0xc9t
        0xfbt 0xf0t 0xf0t 0xbt
        0x41t 0xadt 0xadt 0xect
        0xb3t 0xd4t 0xd4t 0x67t
        0x5ft 0xa2t 0xa2t 0xfdt
        0x45t 0xaft 0xaft 0xeat
        0x23t 0x9ct 0x9ct 0xbft
        0x53t 0xa4t 0xa4t 0xf7t
        0xe4t 0x72t 0x72t 0x96t
        0x9bt 0xc0t 0xc0t 0x5bt
        0x75t 0xb7t 0xb7t 0xc2t
        0xe1t 0xfdt 0xfdt 0x1ct
        0x3dt 0x93t 0x93t 0xaet
        0x4ct 0x26t 0x26t 0x6at
        0x6ct 0x36t 0x36t 0x5at
        0x7et 0x3ft 0x3ft 0x41t
        0xf5t 0xf7t 0xf7t 0x2t
        0x83t 0xcct 0xcct 0x4ft
        0x68t 0x34t 0x34t 0x5ct
        0x51t 0xa5t 0xa5t 0xf4t
        0xd1t 0xe5t 0xe5t 0x34t
        0xf9t 0xf1t 0xf1t 0x8t
        0xe2t 0x71t 0x71t 0x93t
        0xabt 0xd8t 0xd8t 0x73t
        0x62t 0x31t 0x31t 0x53t
        0x2at 0x15t 0x15t 0x3ft
        0x8t 0x4t 0x4t 0xct
        0x95t 0xc7t 0xc7t 0x52t
        0x46t 0x23t 0x23t 0x65t
        0x9dt 0xc3t 0xc3t 0x5et
        0x30t 0x18t 0x18t 0x28t
        0x37t 0x96t 0x96t 0xa1t
        0xat 0x5t 0x5t 0xft
        0x2ft 0x9at 0x9at 0xb5t
        0xet 0x7t 0x7t 0x9t
        0x24t 0x12t 0x12t 0x36t
        0x1bt 0x80t 0x80t 0x9bt
        0xdft 0xe2t 0xe2t 0x3dt
        0xcdt 0xebt 0xebt 0x26t
        0x4et 0x27t 0x27t 0x69t
        0x7ft 0xb2t 0xb2t 0xcdt
        0xeat 0x75t 0x75t 0x9ft
        0x12t 0x9t 0x9t 0x1bt
        0x1dt 0x83t 0x83t 0x9et
        0x58t 0x2ct 0x2ct 0x74t
        0x34t 0x1at 0x1at 0x2et
        0x36t 0x1bt 0x1bt 0x2dt
        0xdct 0x6et 0x6et 0xb2t
        0xb4t 0x5at 0x5at 0xeet
        0x5bt 0xa0t 0xa0t 0xfbt
        0xa4t 0x52t 0x52t 0xf6t
        0x76t 0x3bt 0x3bt 0x4dt
        0xb7t 0xd6t 0xd6t 0x61t
        0x7dt 0xb3t 0xb3t 0xcet
        0x52t 0x29t 0x29t 0x7bt
        0xddt 0xe3t 0xe3t 0x3et
        0x5et 0x2ft 0x2ft 0x71t
        0x13t 0x84t 0x84t 0x97t
        0xa6t 0x53t 0x53t 0xf5t
        0xb9t 0xd1t 0xd1t 0x68t
        0x0t 0x0t 0x0t 0x0t
        0xc1t 0xedt 0xedt 0x2ct
        0x40t 0x20t 0x20t 0x60t
        0xe3t 0xfct 0xfct 0x1ft
        0x79t 0xb1t 0xb1t 0xc8t
        0xb6t 0x5bt 0x5bt 0xedt
        0xd4t 0x6at 0x6at 0xbet
        0x8dt 0xcbt 0xcbt 0x46t
        0x67t 0xbet 0xbet 0xd9t
        0x72t 0x39t 0x39t 0x4bt
        0x94t 0x4at 0x4at 0xdet
        0x98t 0x4ct 0x4ct 0xd4t
        0xb0t 0x58t 0x58t 0xe8t
        0x85t 0xcft 0xcft 0x4at
        0xbbt 0xd0t 0xd0t 0x6bt
        0xc5t 0xeft 0xeft 0x2at
        0x4ft 0xaat 0xaat 0xe5t
        0xedt 0xfbt 0xfbt 0x16t
        0x86t 0x43t 0x43t 0xc5t
        0x9at 0x4dt 0x4dt 0xd7t
        0x66t 0x33t 0x33t 0x55t
        0x11t 0x85t 0x85t 0x94t
        0x8at 0x45t 0x45t 0xcft
        0xe9t 0xf9t 0xf9t 0x10t
        0x4t 0x2t 0x2t 0x6t
        0xfet 0x7ft 0x7ft 0x81t
        0xa0t 0x50t 0x50t 0xf0t
        0x78t 0x3ct 0x3ct 0x44t
        0x25t 0x9ft 0x9ft 0xbat
        0x4bt 0xa8t 0xa8t 0xe3t
        0xa2t 0x51t 0x51t 0xf3t
        0x5dt 0xa3t 0xa3t 0xfet
        0x80t 0x40t 0x40t 0xc0t
        0x5t 0x8ft 0x8ft 0x8at
        0x3ft 0x92t 0x92t 0xadt
        0x21t 0x9dt 0x9dt 0xbct
        0x70t 0x38t 0x38t 0x48t
        0xf1t 0xf5t 0xf5t 0x4t
        0x63t 0xbct 0xbct 0xdft
        0x77t 0xb6t 0xb6t 0xc1t
        0xaft 0xdat 0xdat 0x75t
        0x42t 0x21t 0x21t 0x63t
        0x20t 0x10t 0x10t 0x30t
        0xe5t 0xfft 0xfft 0x1at
        0xfdt 0xf3t 0xf3t 0xet
        0xbft 0xd2t 0xd2t 0x6dt
        0x81t 0xcdt 0xcdt 0x4ct
        0x18t 0xct 0xct 0x14t
        0x26t 0x13t 0x13t 0x35t
        0xc3t 0xect 0xect 0x2ft
        0xbet 0x5ft 0x5ft 0xe1t
        0x35t 0x97t 0x97t 0xa2t
        0x88t 0x44t 0x44t 0xcct
        0x2et 0x17t 0x17t 0x39t
        0x93t 0xc4t 0xc4t 0x57t
        0x55t 0xa7t 0xa7t 0xf2t
        0xfct 0x7et 0x7et 0x82t
        0x7at 0x3dt 0x3dt 0x47t
        0xc8t 0x64t 0x64t 0xact
        0xbat 0x5dt 0x5dt 0xe7t
        0x32t 0x19t 0x19t 0x2bt
        0xe6t 0x73t 0x73t 0x95t
        0xc0t 0x60t 0x60t 0xa0t
        0x19t 0x81t 0x81t 0x98t
        0x9et 0x4ft 0x4ft 0xd1t
        0xa3t 0xdct 0xdct 0x7ft
        0x44t 0x22t 0x22t 0x66t
        0x54t 0x2at 0x2at 0x7et
        0x3bt 0x90t 0x90t 0xabt
        0xbt 0x88t 0x88t 0x83t
        0x8ct 0x46t 0x46t 0xcat
        0xc7t 0xeet 0xeet 0x29t
        0x6bt 0xb8t 0xb8t 0xd3t
        0x28t 0x14t 0x14t 0x3ct
        0xa7t 0xdet 0xdet 0x79t
        0xbct 0x5et 0x5et 0xe2t
        0x16t 0xbt 0xbt 0x1dt
        0xadt 0xdbt 0xdbt 0x76t
        0xdbt 0xe0t 0xe0t 0x3bt
        0x64t 0x32t 0x32t 0x56t
        0x74t 0x3at 0x3at 0x4et
        0x14t 0xat 0xat 0x1et
        0x92t 0x49t 0x49t 0xdbt
        0xct 0x6t 0x6t 0xat
        0x48t 0x24t 0x24t 0x6ct
        0xb8t 0x5ct 0x5ct 0xe4t
        0x9ft 0xc2t 0xc2t 0x5dt
        0xbdt 0xd3t 0xd3t 0x6et
        0x43t 0xact 0xact 0xeft
        0xc4t 0x62t 0x62t 0xa6t
        0x39t 0x91t 0x91t 0xa8t
        0x31t 0x95t 0x95t 0xa4t
        0xd3t 0xe4t 0xe4t 0x37t
        0xf2t 0x79t 0x79t 0x8bt
        0xd5t 0xe7t 0xe7t 0x32t
        0x8bt 0xc8t 0xc8t 0x43t
        0x6et 0x37t 0x37t 0x59t
        0xdat 0x6dt 0x6dt 0xb7t
        0x1t 0x8dt 0x8dt 0x8ct
        0xb1t 0xd5t 0xd5t 0x64t
        0x9ct 0x4et 0x4et 0xd2t
        0x49t 0xa9t 0xa9t 0xe0t
        0xd8t 0x6ct 0x6ct 0xb4t
        0xact 0x56t 0x56t 0xfat
        0xf3t 0xf4t 0xf4t 0x7t
        0xcft 0xeat 0xeat 0x25t
        0xcat 0x65t 0x65t 0xaft
        0xf4t 0x7at 0x7at 0x8et
        0x47t 0xaet 0xaet 0xe9t
        0x10t 0x8t 0x8t 0x18t
        0x6ft 0xbat 0xbat 0xd5t
        0xf0t 0x78t 0x78t 0x88t
        0x4at 0x25t 0x25t 0x6ft
        0x5ct 0x2et 0x2et 0x72t
        0x38t 0x1ct 0x1ct 0x24t
        0x57t 0xa6t 0xa6t 0xf1t
        0x73t 0xb4t 0xb4t 0xc7t
        0x97t 0xc6t 0xc6t 0x51t
        0xcbt 0xe8t 0xe8t 0x23t
        0xa1t 0xddt 0xddt 0x7ct
        0xe8t 0x74t 0x74t 0x9ct
        0x3et 0x1ft 0x1ft 0x21t
        0x96t 0x4bt 0x4bt 0xddt
        0x61t 0xbdt 0xbdt 0xdct
        0xdt 0x8bt 0x8bt 0x86t
        0xft 0x8at 0x8at 0x85t
        0xe0t 0x70t 0x70t 0x90t
        0x7ct 0x3et 0x3et 0x42t
        0x71t 0xb5t 0xb5t 0xc4t
        0xcct 0x66t 0x66t 0xaat
        0x90t 0x48t 0x48t 0xd8t
        0x6t 0x3t 0x3t 0x5t
        0xf7t 0xf6t 0xf6t 0x1t
        0x1ct 0xet 0xet 0x12t
        0xc2t 0x61t 0x61t 0xa3t
        0x6at 0x35t 0x35t 0x5ft
        0xaet 0x57t 0x57t 0xf9t
        0x69t 0xb9t 0xb9t 0xd0t
        0x17t 0x86t 0x86t 0x91t
        0x99t 0xc1t 0xc1t 0x58t
        0x3at 0x1dt 0x1dt 0x27t
        0x27t 0x9et 0x9et 0xb9t
        0xd9t 0xe1t 0xe1t 0x38t
        0xebt 0xf8t 0xf8t 0x13t
        0x2bt 0x98t 0x98t 0xb3t
        0x22t 0x11t 0x11t 0x33t
        0xd2t 0x69t 0x69t 0xbbt
        0xa9t 0xd9t 0xd9t 0x70t
        0x7t 0x8et 0x8et 0x89t
        0x33t 0x94t 0x94t 0xa7t
        0x2dt 0x9bt 0x9bt 0xb6t
        0x3ct 0x1et 0x1et 0x22t
        0x15t 0x87t 0x87t 0x92t
        0xc9t 0xe9t 0xe9t 0x20t
        0x87t 0xcet 0xcet 0x49t
        0xaat 0x55t 0x55t 0xfft
        0x50t 0x28t 0x28t 0x78t
        0xa5t 0xdft 0xdft 0x7at
        0x3t 0x8ct 0x8ct 0x8ft
        0x59t 0xa1t 0xa1t 0xf8t
        0x9t 0x89t 0x89t 0x80t
        0x1at 0xdt 0xdt 0x17t
        0x65t 0xbft 0xbft 0xdat
        0xd7t 0xe6t 0xe6t 0x31t
        0x84t 0x42t 0x42t 0xc6t
        0xd0t 0x68t 0x68t 0xb8t
        0x82t 0x41t 0x41t 0xc3t
        0x29t 0x99t 0x99t 0xb0t
        0x5at 0x2dt 0x2dt 0x77t
        0x1et 0xft 0xft 0x11t
        0x7bt 0xb0t 0xb0t 0xcbt
        0xa8t 0x54t 0x54t 0xfct
        0x6dt 0xbbt 0xbbt 0xd6t
        0x2ct 0x16t 0x16t 0x3at
    .end array-data

    .line 161
    :array_4
    .array-data 0x4
        0x51t 0xf4t 0xa7t 0x50t
        0x7et 0x41t 0x65t 0x53t
        0x1at 0x17t 0xa4t 0xc3t
        0x3at 0x27t 0x5et 0x96t
        0x3bt 0xabt 0x6bt 0xcbt
        0x1ft 0x9dt 0x45t 0xf1t
        0xact 0xfat 0x58t 0xabt
        0x4bt 0xe3t 0x3t 0x93t
        0x20t 0x30t 0xfat 0x55t
        0xadt 0x76t 0x6dt 0xf6t
        0x88t 0xcct 0x76t 0x91t
        0xf5t 0x2t 0x4ct 0x25t
        0x4ft 0xe5t 0xd7t 0xfct
        0xc5t 0x2at 0xcbt 0xd7t
        0x26t 0x35t 0x44t 0x80t
        0xb5t 0x62t 0xa3t 0x8ft
        0xdet 0xb1t 0x5at 0x49t
        0x25t 0xbat 0x1bt 0x67t
        0x45t 0xeat 0xet 0x98t
        0x5dt 0xfet 0xc0t 0xe1t
        0xc3t 0x2ft 0x75t 0x2t
        0x81t 0x4ct 0xf0t 0x12t
        0x8dt 0x46t 0x97t 0xa3t
        0x6bt 0xd3t 0xf9t 0xc6t
        0x3t 0x8ft 0x5ft 0xe7t
        0x15t 0x92t 0x9ct 0x95t
        0xbft 0x6dt 0x7at 0xebt
        0x95t 0x52t 0x59t 0xdat
        0xd4t 0xbet 0x83t 0x2dt
        0x58t 0x74t 0x21t 0xd3t
        0x49t 0xe0t 0x69t 0x29t
        0x8et 0xc9t 0xc8t 0x44t
        0x75t 0xc2t 0x89t 0x6at
        0xf4t 0x8et 0x79t 0x78t
        0x99t 0x58t 0x3et 0x6bt
        0x27t 0xb9t 0x71t 0xddt
        0xbet 0xe1t 0x4ft 0xb6t
        0xf0t 0x88t 0xadt 0x17t
        0xc9t 0x20t 0xact 0x66t
        0x7dt 0xcet 0x3at 0xb4t
        0x63t 0xdft 0x4at 0x18t
        0xe5t 0x1at 0x31t 0x82t
        0x97t 0x51t 0x33t 0x60t
        0x62t 0x53t 0x7ft 0x45t
        0xb1t 0x64t 0x77t 0xe0t
        0xbbt 0x6bt 0xaet 0x84t
        0xfet 0x81t 0xa0t 0x1ct
        0xf9t 0x8t 0x2bt 0x94t
        0x70t 0x48t 0x68t 0x58t
        0x8ft 0x45t 0xfdt 0x19t
        0x94t 0xdet 0x6ct 0x87t
        0x52t 0x7bt 0xf8t 0xb7t
        0xabt 0x73t 0xd3t 0x23t
        0x72t 0x4bt 0x2t 0xe2t
        0xe3t 0x1ft 0x8ft 0x57t
        0x66t 0x55t 0xabt 0x2at
        0xb2t 0xebt 0x28t 0x7t
        0x2ft 0xb5t 0xc2t 0x3t
        0x86t 0xc5t 0x7bt 0x9at
        0xd3t 0x37t 0x8t 0xa5t
        0x30t 0x28t 0x87t 0xf2t
        0x23t 0xbft 0xa5t 0xb2t
        0x2t 0x3t 0x6at 0xbat
        0xedt 0x16t 0x82t 0x5ct
        0x8at 0xcft 0x1ct 0x2bt
        0xa7t 0x79t 0xb4t 0x92t
        0xf3t 0x7t 0xf2t 0xf0t
        0x4et 0x69t 0xe2t 0xa1t
        0x65t 0xdat 0xf4t 0xcdt
        0x6t 0x5t 0xbet 0xd5t
        0xd1t 0x34t 0x62t 0x1ft
        0xc4t 0xa6t 0xfet 0x8at
        0x34t 0x2et 0x53t 0x9dt
        0xa2t 0xf3t 0x55t 0xa0t
        0x5t 0x8at 0xe1t 0x32t
        0xa4t 0xf6t 0xebt 0x75t
        0xbt 0x83t 0xect 0x39t
        0x40t 0x60t 0xeft 0xaat
        0x5et 0x71t 0x9ft 0x6t
        0xbdt 0x6et 0x10t 0x51t
        0x3et 0x21t 0x8at 0xf9t
        0x96t 0xddt 0x6t 0x3dt
        0xddt 0x3et 0x5t 0xaet
        0x4dt 0xe6t 0xbdt 0x46t
        0x91t 0x54t 0x8dt 0xb5t
        0x71t 0xc4t 0x5dt 0x5t
        0x4t 0x6t 0xd4t 0x6ft
        0x60t 0x50t 0x15t 0xfft
        0x19t 0x98t 0xfbt 0x24t
        0xd6t 0xbdt 0xe9t 0x97t
        0x89t 0x40t 0x43t 0xcct
        0x67t 0xd9t 0x9et 0x77t
        0xb0t 0xe8t 0x42t 0xbdt
        0x7t 0x89t 0x8bt 0x88t
        0xe7t 0x19t 0x5bt 0x38t
        0x79t 0xc8t 0xeet 0xdbt
        0xa1t 0x7ct 0xat 0x47t
        0x7ct 0x42t 0xft 0xe9t
        0xf8t 0x84t 0x1et 0xc9t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x80t 0x86t 0x83t
        0x32t 0x2bt 0xedt 0x48t
        0x1et 0x11t 0x70t 0xact
        0x6ct 0x5at 0x72t 0x4et
        0xfdt 0xet 0xfft 0xfbt
        0xft 0x85t 0x38t 0x56t
        0x3dt 0xaet 0xd5t 0x1et
        0x36t 0x2dt 0x39t 0x27t
        0xat 0xft 0xd9t 0x64t
        0x68t 0x5ct 0xa6t 0x21t
        0x9bt 0x5bt 0x54t 0xd1t
        0x24t 0x36t 0x2et 0x3at
        0xct 0xat 0x67t 0xb1t
        0x93t 0x57t 0xe7t 0xft
        0xb4t 0xeet 0x96t 0xd2t
        0x1bt 0x9bt 0x91t 0x9et
        0x80t 0xc0t 0xc5t 0x4ft
        0x61t 0xdct 0x20t 0xa2t
        0x5at 0x77t 0x4bt 0x69t
        0x1ct 0x12t 0x1at 0x16t
        0xe2t 0x93t 0xbat 0xat
        0xc0t 0xa0t 0x2at 0xe5t
        0x3ct 0x22t 0xe0t 0x43t
        0x12t 0x1bt 0x17t 0x1dt
        0xet 0x9t 0xdt 0xbt
        0xf2t 0x8bt 0xc7t 0xadt
        0x2dt 0xb6t 0xa8t 0xb9t
        0x14t 0x1et 0xa9t 0xc8t
        0x57t 0xf1t 0x19t 0x85t
        0xaft 0x75t 0x7t 0x4ct
        0xeet 0x99t 0xddt 0xbbt
        0xa3t 0x7ft 0x60t 0xfdt
        0xf7t 0x1t 0x26t 0x9ft
        0x5ct 0x72t 0xf5t 0xbct
        0x44t 0x66t 0x3bt 0xc5t
        0x5bt 0xfbt 0x7et 0x34t
        0x8bt 0x43t 0x29t 0x76t
        0xcbt 0x23t 0xc6t 0xdct
        0xb6t 0xedt 0xfct 0x68t
        0xb8t 0xe4t 0xf1t 0x63t
        0xd7t 0x31t 0xdct 0xcat
        0x42t 0x63t 0x85t 0x10t
        0x13t 0x97t 0x22t 0x40t
        0x84t 0xc6t 0x11t 0x20t
        0x85t 0x4at 0x24t 0x7dt
        0xd2t 0xbbt 0x3dt 0xf8t
        0xaet 0xf9t 0x32t 0x11t
        0xc7t 0x29t 0xa1t 0x6dt
        0x1dt 0x9et 0x2ft 0x4bt
        0xdct 0xb2t 0x30t 0xf3t
        0xdt 0x86t 0x52t 0xect
        0x77t 0xc1t 0xe3t 0xd0t
        0x2bt 0xb3t 0x16t 0x6ct
        0xa9t 0x70t 0xb9t 0x99t
        0x11t 0x94t 0x48t 0xfat
        0x47t 0xe9t 0x64t 0x22t
        0xa8t 0xfct 0x8ct 0xc4t
        0xa0t 0xf0t 0x3ft 0x1at
        0x56t 0x7dt 0x2ct 0xd8t
        0x22t 0x33t 0x90t 0xeft
        0x87t 0x49t 0x4et 0xc7t
        0xd9t 0x38t 0xd1t 0xc1t
        0x8ct 0xcat 0xa2t 0xfet
        0x98t 0xd4t 0xbt 0x36t
        0xa6t 0xf5t 0x81t 0xcft
        0xa5t 0x7at 0xdet 0x28t
        0xdat 0xb7t 0x8et 0x26t
        0x3ft 0xadt 0xbft 0xa4t
        0x2ct 0x3at 0x9dt 0xe4t
        0x50t 0x78t 0x92t 0xdt
        0x6at 0x5ft 0xcct 0x9bt
        0x54t 0x7et 0x46t 0x62t
        0xf6t 0x8dt 0x13t 0xc2t
        0x90t 0xd8t 0xb8t 0xe8t
        0x2et 0x39t 0xf7t 0x5et
        0x82t 0xc3t 0xaft 0xf5t
        0x9ft 0x5dt 0x80t 0xbet
        0x69t 0xd0t 0x93t 0x7ct
        0x6ft 0xd5t 0x2dt 0xa9t
        0xcft 0x25t 0x12t 0xb3t
        0xc8t 0xact 0x99t 0x3bt
        0x10t 0x18t 0x7dt 0xa7t
        0xe8t 0x9ct 0x63t 0x6et
        0xdbt 0x3bt 0xbbt 0x7bt
        0xcdt 0x26t 0x78t 0x9t
        0x6et 0x59t 0x18t 0xf4t
        0xect 0x9at 0xb7t 0x1t
        0x83t 0x4ft 0x9at 0xa8t
        0xe6t 0x95t 0x6et 0x65t
        0xaat 0xfft 0xe6t 0x7et
        0x21t 0xbct 0xcft 0x8t
        0xeft 0x15t 0xe8t 0xe6t
        0xbat 0xe7t 0x9bt 0xd9t
        0x4at 0x6ft 0x36t 0xcet
        0xeat 0x9ft 0x9t 0xd4t
        0x29t 0xb0t 0x7ct 0xd6t
        0x31t 0xa4t 0xb2t 0xaft
        0x2at 0x3ft 0x23t 0x31t
        0xc6t 0xa5t 0x94t 0x30t
        0x35t 0xa2t 0x66t 0xc0t
        0x74t 0x4et 0xbct 0x37t
        0xfct 0x82t 0xcat 0xa6t
        0xe0t 0x90t 0xd0t 0xb0t
        0x33t 0xa7t 0xd8t 0x15t
        0xf1t 0x4t 0x98t 0x4at
        0x41t 0xect 0xdat 0xf7t
        0x7ft 0xcdt 0x50t 0xet
        0x17t 0x91t 0xf6t 0x2ft
        0x76t 0x4dt 0xd6t 0x8dt
        0x43t 0xeft 0xb0t 0x4dt
        0xcct 0xaat 0x4dt 0x54t
        0xe4t 0x96t 0x4t 0xdft
        0x9et 0xd1t 0xb5t 0xe3t
        0x4ct 0x6at 0x88t 0x1bt
        0xc1t 0x2ct 0x1ft 0xb8t
        0x46t 0x65t 0x51t 0x7ft
        0x9dt 0x5et 0xeat 0x4t
        0x1t 0x8ct 0x35t 0x5dt
        0xfat 0x87t 0x74t 0x73t
        0xfbt 0xbt 0x41t 0x2et
        0xb3t 0x67t 0x1dt 0x5at
        0x92t 0xdbt 0xd2t 0x52t
        0xe9t 0x10t 0x56t 0x33t
        0x6dt 0xd6t 0x47t 0x13t
        0x9at 0xd7t 0x61t 0x8ct
        0x37t 0xa1t 0xct 0x7at
        0x59t 0xf8t 0x14t 0x8et
        0xebt 0x13t 0x3ct 0x89t
        0xcet 0xa9t 0x27t 0xeet
        0xb7t 0x61t 0xc9t 0x35t
        0xe1t 0x1ct 0xe5t 0xedt
        0x7at 0x47t 0xb1t 0x3ct
        0x9ct 0xd2t 0xdft 0x59t
        0x55t 0xf2t 0x73t 0x3ft
        0x18t 0x14t 0xcet 0x79t
        0x73t 0xc7t 0x37t 0xbft
        0x53t 0xf7t 0xcdt 0xeat
        0x5ft 0xfdt 0xaat 0x5bt
        0xdft 0x3dt 0x6ft 0x14t
        0x78t 0x44t 0xdbt 0x86t
        0xcat 0xaft 0xf3t 0x81t
        0xb9t 0x68t 0xc4t 0x3et
        0x38t 0x24t 0x34t 0x2ct
        0xc2t 0xa3t 0x40t 0x5ft
        0x16t 0x1dt 0xc3t 0x72t
        0xbct 0xe2t 0x25t 0xct
        0x28t 0x3ct 0x49t 0x8bt
        0xfft 0xdt 0x95t 0x41t
        0x39t 0xa8t 0x1t 0x71t
        0x8t 0xct 0xb3t 0xdet
        0xd8t 0xb4t 0xe4t 0x9ct
        0x64t 0x56t 0xc1t 0x90t
        0x7bt 0xcbt 0x84t 0x61t
        0xd5t 0x32t 0xb6t 0x70t
        0x48t 0x6ct 0x5ct 0x74t
        0xd0t 0xb8t 0x57t 0x42t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 306
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    .line 307
    return-void
.end method

.method private FFmulX(I)I
    .locals 2
    .parameter

    .prologue
    .line 212
    const v0, 0x7f7f7f7f

    and-int/2addr v0, p1

    shl-int/lit8 v0, v0, 0x1

    const v1, -0x7f7f7f80

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([[I)V
    .locals 14
    .parameter "KW"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v11, 0x18

    const/16 v10, 0x10

    const/16 v9, 0x8

    .line 468
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    .line 469
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v13

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    .line 470
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v7, p1, v7

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    .line 471
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v7, p1, v7

    const/4 v8, 0x3

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    .line 473
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    add-int/lit8 v0, v6, -0x1

    .local v0, r:I
    move v1, v0

    .line 475
    .end local v0           #r:I
    .local v1, r:I
    :goto_0
    if-le v1, v13, :cond_0

    .line 476
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int v2, v6, v7

    .line 479
    .local v2, r0:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v13

    xor-int v3, v6, v7

    .line 482
    .local v3, r1:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int v4, v6, v7

    .line 485
    .local v4, r2:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    add-int/lit8 v0, v1, -0x1

    .end local v1           #r:I
    .restart local v0       #r:I
    aget-object v7, p1, v1

    const/4 v8, 0x3

    aget v7, v7, v8

    xor-int v5, v6, v7

    .line 488
    .local v5, r3:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v7, v2, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    .line 491
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v7, v3, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    aget v7, v7, v13

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    .line 494
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v7, v4, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    .line 497
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v7, v5, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    add-int/lit8 v1, v0, -0x1

    .end local v0           #r:I
    .restart local v1       #r:I
    aget-object v7, p1, v0

    const/4 v8, 0x3

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    goto/16 :goto_0

    .line 502
    .end local v2           #r0:I
    .end local v3           #r1:I
    .end local v4           #r2:I
    .end local v5           #r3:I
    :cond_0
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int v2, v6, v7

    .line 504
    .restart local v2       #r0:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v13

    xor-int v3, v6, v7

    .line 506
    .restart local v3       #r1:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int v4, v6, v7

    .line 508
    .restart local v4       #r2:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    const/4 v8, 0x3

    aget v7, v7, v8

    xor-int v5, v6, v7

    .line 514
    .restart local v5       #r3:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v12

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    .line 516
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v12

    aget v7, v7, v13

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    .line 518
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v12

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    .line 520
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v12

    const/4 v8, 0x3

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    .line 522
    return-void
.end method

.method private encryptBlock([[I)V
    .locals 14
    .parameter "KW"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v11, 0x18

    const/16 v10, 0x10

    const/16 v9, 0x8

    .line 416
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    aget-object v7, p1, v12

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    .line 417
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    aget-object v7, p1, v12

    aget v7, v7, v13

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    .line 418
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    aget-object v7, p1, v12

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    .line 419
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    aget-object v7, p1, v12

    const/4 v8, 0x3

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    .line 421
    const/4 v0, 0x1

    .line 423
    .local v0, r:I
    :goto_0
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 424
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int v2, v6, v7

    .line 426
    .local v2, r0:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    aget v7, v7, v13

    xor-int v3, v6, v7

    .line 428
    .local v3, r1:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int v4, v6, v7

    .line 430
    .local v4, r2:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #r:I
    .local v1, r:I
    aget-object v7, p1, v0

    const/4 v8, 0x3

    aget v7, v7, v8

    xor-int v5, v6, v7

    .line 432
    .local v5, r3:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v7, v2, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    .line 434
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v7, v3, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v13

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    .line 436
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v7, v4, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    .line 438
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v7, v5, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #r:I
    .restart local v0       #r:I
    aget-object v7, p1, v1

    const/4 v8, 0x3

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    goto/16 :goto_0

    .line 442
    .end local v2           #r0:I
    .end local v3           #r1:I
    .end local v4           #r2:I
    .end local v5           #r3:I
    :cond_0
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int v2, v6, v7

    .line 444
    .restart local v2       #r0:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    aget v7, v7, v13

    xor-int v3, v6, v7

    .line 446
    .restart local v3       #r1:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int v4, v6, v7

    .line 448
    .restart local v4       #r2:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-direct {p0, v7, v9}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v6, v7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #r:I
    .restart local v1       #r:I
    aget-object v7, p1, v0

    const/4 v8, 0x3

    aget v7, v7, v8

    xor-int v5, v6, v7

    .line 454
    .restart local v5       #r3:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    .line 456
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v13

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    .line 458
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    .line 460
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    const/4 v8, 0x3

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    .line 463
    return-void
.end method

.method private generateWorkingKey([BZ)[[I
    .locals 13
    .parameter
    .parameter

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x6

    const/4 v2, 0x0

    const/4 v10, 0x4

    .line 245
    array-length v0, p1

    div-int/lit8 v4, v0, 0x4

    .line 248
    if-eq v4, v10, :cond_0

    if-eq v4, v11, :cond_0

    if-ne v4, v12, :cond_1

    :cond_0
    mul-int/lit8 v0, v4, 0x4

    array-length v1, p1

    if-eq v0, v1, :cond_2

    .line 249
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length not 128/192/256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_2
    add-int/lit8 v0, v4, 0x6

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    .line 254
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    add-int/lit8 v0, v0, 0x1

    filled-new-array {v0, v10}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    move v3, v2

    .line 262
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 263
    shr-int/lit8 v5, v3, 0x2

    aget-object v5, v0, v5

    and-int/lit8 v6, v3, 0x3

    aget-byte v7, p1, v1

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    add-int/lit8 v8, v1, 0x3

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 265
    add-int/lit8 v1, v1, 0x4

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    :cond_3
    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v5, v1, 0x2

    move v3, v4

    .line 274
    :goto_1
    if-ge v3, v5, :cond_6

    .line 275
    add-int/lit8 v1, v3, -0x1

    shr-int/lit8 v1, v1, 0x2

    aget-object v1, v0, v1

    add-int/lit8 v6, v3, -0x1

    and-int/lit8 v6, v6, 0x3

    aget v1, v1, v6

    .line 276
    rem-int v6, v3, v4

    if-nez v6, :cond_5

    .line 277
    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v1

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESEngine;->rcon:[I

    div-int v7, v3, v4

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    xor-int/2addr v1, v6

    .line 282
    :cond_4
    :goto_2
    shr-int/lit8 v6, v3, 0x2

    aget-object v6, v0, v6

    and-int/lit8 v7, v3, 0x3

    sub-int v8, v3, v4

    shr-int/lit8 v8, v8, 0x2

    aget-object v8, v0, v8

    sub-int v9, v3, v4

    and-int/lit8 v9, v9, 0x3

    aget v8, v8, v9

    xor-int/2addr v1, v8

    aput v1, v6, v7

    .line 274
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 278
    :cond_5
    if-le v4, v11, :cond_4

    rem-int v6, v3, v4

    if-ne v6, v10, :cond_4

    .line 279
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v1

    goto :goto_2

    .line 285
    :cond_6
    if-nez p2, :cond_8

    .line 286
    const/4 v1, 0x1

    :goto_3
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    if-ge v1, v3, :cond_8

    move v3, v2

    .line 287
    :goto_4
    if-ge v3, v10, :cond_7

    .line 288
    aget-object v4, v0, v1

    aget-object v5, v0, v1

    aget v5, v5, v3

    invoke-direct {p0, v5}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->inv_mcol(I)I

    move-result v5

    aput v5, v4, v3

    .line 287
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 286
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 293
    :cond_8
    return-object v0
.end method

.method private inv_mcol(I)I
    .locals 7
    .parameter "x"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->FFmulX(I)I

    move-result v0

    .line 226
    .local v0, f2:I
    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->FFmulX(I)I

    move-result v1

    .line 227
    .local v1, f4:I
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->FFmulX(I)I

    move-result v2

    .line 228
    .local v2, f8:I
    xor-int v3, p1, v2

    .line 230
    .local v3, f9:I
    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    xor-int v5, v0, v3

    const/16 v6, 0x8

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    xor-int v5, v1, v3

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    const/16 v5, 0x18

    invoke-direct {p0, v3, v5}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    return v4
.end method

.method private packBlock([BI)V
    .locals 3
    .parameter "bytes"
    .parameter "off"

    .prologue
    .line 390
    move v0, p2

    .line 392
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 393
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 394
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 395
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 397
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 398
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 399
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 400
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 402
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 403
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 404
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 405
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 407
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 408
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 409
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 410
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 411
    return-void
.end method

.method private shift(II)I
    .locals 2
    .parameter "r"
    .parameter "shift"

    .prologue
    .line 202
    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private subWord(I)I
    .locals 3
    .parameter "x"

    .prologue
    .line 234
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v1, p1, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lmyorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackBlock([BI)V
    .locals 4
    .parameter "bytes"
    .parameter "off"

    .prologue
    .line 366
    move v0, p2

    .line 368
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    .line 369
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    .line 370
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    .line 371
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    .line 373
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    .line 374
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    .line 375
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    .line 376
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    .line 378
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    .line 379
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    .line 380
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    .line 381
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    .line 383
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    .line 384
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    .line 385
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    .line 386
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    .line 387
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    const-string v0, "AES"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 333
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 318
    instance-of v0, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 319
    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->generateWorkingKey([BZ)[[I

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    .line 320
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->forEncryption:Z

    .line 321
    return-void

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to AES init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 342
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 346
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    .line 350
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->unpackBlock([BI)V

    .line 351
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->encryptBlock([[I)V

    .line 352
    invoke-direct {p0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->packBlock([BI)V

    .line 359
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 354
    :cond_3
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->unpackBlock([BI)V

    .line 355
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->decryptBlock([[I)V

    .line 356
    invoke-direct {p0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/AESEngine;->packBlock([BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method
