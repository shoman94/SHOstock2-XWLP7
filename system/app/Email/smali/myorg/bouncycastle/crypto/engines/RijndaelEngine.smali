.class public Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;
.super Ljava/lang/Object;
.source "RijndaelEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final S:[B

.field private static final Si:[B

.field private static final aLogtable:[B

.field private static final logtable:[B

.field private static final rcon:[I

.field static shifts0:[[B

.field static shifts1:[[B


# instance fields
.field private A0:J

.field private A1:J

.field private A2:J

.field private A3:J

.field private BC:I

.field private BC_MASK:J

.field private ROUNDS:I

.field private blockBits:I

.field private forEncryption:Z

.field private shifts0SC:[B

.field private shifts1SC:[B

.field private workingKey:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x100

    const/4 v3, 0x4

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    .line 61
    const/16 v0, 0x1ff

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    .line 137
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    .line 177
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    .line 217
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->rcon:[I

    .line 223
    const/4 v0, 0x5

    new-array v0, v0, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_7

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    .line 237
    const/4 v0, 0x5

    new-array v0, v0, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    return-void

    .line 21
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x19t
        0x1t
        0x32t
        0x2t
        0x1at
        0xc6t
        0x4bt
        0xc7t
        0x1bt
        0x68t
        0x33t
        0xeet
        0xdft
        0x3t
        0x64t
        0x4t
        0xe0t
        0xet
        0x34t
        0x8dt
        0x81t
        0xeft
        0x4ct
        0x71t
        0x8t
        0xc8t
        0xf8t
        0x69t
        0x1ct
        0xc1t
        0x7dt
        0xc2t
        0x1dt
        0xb5t
        0xf9t
        0xb9t
        0x27t
        0x6at
        0x4dt
        0xe4t
        0xa6t
        0x72t
        0x9at
        0xc9t
        0x9t
        0x78t
        0x65t
        0x2ft
        0x8at
        0x5t
        0x21t
        0xft
        0xe1t
        0x24t
        0x12t
        0xf0t
        0x82t
        0x45t
        0x35t
        0x93t
        0xdat
        0x8et
        0x96t
        0x8ft
        0xdbt
        0xbdt
        0x36t
        0xd0t
        0xcet
        0x94t
        0x13t
        0x5ct
        0xd2t
        0xf1t
        0x40t
        0x46t
        0x83t
        0x38t
        0x66t
        0xddt
        0xfdt
        0x30t
        0xbft
        0x6t
        0x8bt
        0x62t
        0xb3t
        0x25t
        0xe2t
        0x98t
        0x22t
        0x88t
        0x91t
        0x10t
        0x7et
        0x6et
        0x48t
        0xc3t
        0xa3t
        0xb6t
        0x1et
        0x42t
        0x3at
        0x6bt
        0x28t
        0x54t
        0xfat
        0x85t
        0x3dt
        0xbat
        0x2bt
        0x79t
        0xat
        0x15t
        0x9bt
        0x9ft
        0x5et
        0xcat
        0x4et
        0xd4t
        0xact
        0xe5t
        0xf3t
        0x73t
        0xa7t
        0x57t
        0xaft
        0x58t
        0xa8t
        0x50t
        0xf4t
        0xeat
        0xd6t
        0x74t
        0x4ft
        0xaet
        0xe9t
        0xd5t
        0xe7t
        0xe6t
        0xadt
        0xe8t
        0x2ct
        0xd7t
        0x75t
        0x7at
        0xebt
        0x16t
        0xbt
        0xf5t
        0x59t
        0xcbt
        0x5ft
        0xb0t
        0x9ct
        0xa9t
        0x51t
        0xa0t
        0x7ft
        0xct
        0xf6t
        0x6ft
        0x17t
        0xc4t
        0x49t
        0xect
        0xd8t
        0x43t
        0x1ft
        0x2dt
        0xa4t
        0x76t
        0x7bt
        0xb7t
        0xcct
        0xbbt
        0x3et
        0x5at
        0xfbt
        0x60t
        0xb1t
        0x86t
        0x3bt
        0x52t
        0xa1t
        0x6ct
        0xaat
        0x55t
        0x29t
        0x9dt
        0x97t
        0xb2t
        0x87t
        0x90t
        0x61t
        0xbet
        0xdct
        0xfct
        0xbct
        0x95t
        0xcft
        0xcdt
        0x37t
        0x3ft
        0x5bt
        0xd1t
        0x53t
        0x39t
        0x84t
        0x3ct
        0x41t
        0xa2t
        0x6dt
        0x47t
        0x14t
        0x2at
        0x9et
        0x5dt
        0x56t
        0xf2t
        0xd3t
        0xabt
        0x44t
        0x11t
        0x92t
        0xd9t
        0x23t
        0x20t
        0x2et
        0x89t
        0xb4t
        0x7ct
        0xb8t
        0x26t
        0x77t
        0x99t
        0xe3t
        0xa5t
        0x67t
        0x4at
        0xedt
        0xdet
        0xc5t
        0x31t
        0xfet
        0x18t
        0xdt
        0x63t
        0x8ct
        0x80t
        0xc0t
        0xf7t
        0x70t
        0x7t
    .end array-data

    .line 61
    :array_1
    .array-data 0x1
        0x0t
        0x3t
        0x5t
        0xft
        0x11t
        0x33t
        0x55t
        0xfft
        0x1at
        0x2et
        0x72t
        0x96t
        0xa1t
        0xf8t
        0x13t
        0x35t
        0x5ft
        0xe1t
        0x38t
        0x48t
        0xd8t
        0x73t
        0x95t
        0xa4t
        0xf7t
        0x2t
        0x6t
        0xat
        0x1et
        0x22t
        0x66t
        0xaat
        0xe5t
        0x34t
        0x5ct
        0xe4t
        0x37t
        0x59t
        0xebt
        0x26t
        0x6at
        0xbet
        0xd9t
        0x70t
        0x90t
        0xabt
        0xe6t
        0x31t
        0x53t
        0xf5t
        0x4t
        0xct
        0x14t
        0x3ct
        0x44t
        0xcct
        0x4ft
        0xd1t
        0x68t
        0xb8t
        0xd3t
        0x6et
        0xb2t
        0xcdt
        0x4ct
        0xd4t
        0x67t
        0xa9t
        0xe0t
        0x3bt
        0x4dt
        0xd7t
        0x62t
        0xa6t
        0xf1t
        0x8t
        0x18t
        0x28t
        0x78t
        0x88t
        0x83t
        0x9et
        0xb9t
        0xd0t
        0x6bt
        0xbdt
        0xdct
        0x7ft
        0x81t
        0x98t
        0xb3t
        0xcet
        0x49t
        0xdbt
        0x76t
        0x9at
        0xb5t
        0xc4t
        0x57t
        0xf9t
        0x10t
        0x30t
        0x50t
        0xf0t
        0xbt
        0x1dt
        0x27t
        0x69t
        0xbbt
        0xd6t
        0x61t
        0xa3t
        0xfet
        0x19t
        0x2bt
        0x7dt
        0x87t
        0x92t
        0xadt
        0xect
        0x2ft
        0x71t
        0x93t
        0xaet
        0xe9t
        0x20t
        0x60t
        0xa0t
        0xfbt
        0x16t
        0x3at
        0x4et
        0xd2t
        0x6dt
        0xb7t
        0xc2t
        0x5dt
        0xe7t
        0x32t
        0x56t
        0xfat
        0x15t
        0x3ft
        0x41t
        0xc3t
        0x5et
        0xe2t
        0x3dt
        0x47t
        0xc9t
        0x40t
        0xc0t
        0x5bt
        0xedt
        0x2ct
        0x74t
        0x9ct
        0xbft
        0xdat
        0x75t
        0x9ft
        0xbat
        0xd5t
        0x64t
        0xact
        0xeft
        0x2at
        0x7et
        0x82t
        0x9dt
        0xbct
        0xdft
        0x7at
        0x8et
        0x89t
        0x80t
        0x9bt
        0xb6t
        0xc1t
        0x58t
        0xe8t
        0x23t
        0x65t
        0xaft
        0xeat
        0x25t
        0x6ft
        0xb1t
        0xc8t
        0x43t
        0xc5t
        0x54t
        0xfct
        0x1ft
        0x21t
        0x63t
        0xa5t
        0xf4t
        0x7t
        0x9t
        0x1bt
        0x2dt
        0x77t
        0x99t
        0xb0t
        0xcbt
        0x46t
        0xcat
        0x45t
        0xcft
        0x4at
        0xdet
        0x79t
        0x8bt
        0x86t
        0x91t
        0xa8t
        0xe3t
        0x3et
        0x42t
        0xc6t
        0x51t
        0xf3t
        0xet
        0x12t
        0x36t
        0x5at
        0xeet
        0x29t
        0x7bt
        0x8dt
        0x8ct
        0x8ft
        0x8at
        0x85t
        0x94t
        0xa7t
        0xf2t
        0xdt
        0x17t
        0x39t
        0x4bt
        0xddt
        0x7ct
        0x84t
        0x97t
        0xa2t
        0xfdt
        0x1ct
        0x24t
        0x6ct
        0xb4t
        0xc7t
        0x52t
        0xf6t
        0x1t
        0x3t
        0x5t
        0xft
        0x11t
        0x33t
        0x55t
        0xfft
        0x1at
        0x2et
        0x72t
        0x96t
        0xa1t
        0xf8t
        0x13t
        0x35t
        0x5ft
        0xe1t
        0x38t
        0x48t
        0xd8t
        0x73t
        0x95t
        0xa4t
        0xf7t
        0x2t
        0x6t
        0xat
        0x1et
        0x22t
        0x66t
        0xaat
        0xe5t
        0x34t
        0x5ct
        0xe4t
        0x37t
        0x59t
        0xebt
        0x26t
        0x6at
        0xbet
        0xd9t
        0x70t
        0x90t
        0xabt
        0xe6t
        0x31t
        0x53t
        0xf5t
        0x4t
        0xct
        0x14t
        0x3ct
        0x44t
        0xcct
        0x4ft
        0xd1t
        0x68t
        0xb8t
        0xd3t
        0x6et
        0xb2t
        0xcdt
        0x4ct
        0xd4t
        0x67t
        0xa9t
        0xe0t
        0x3bt
        0x4dt
        0xd7t
        0x62t
        0xa6t
        0xf1t
        0x8t
        0x18t
        0x28t
        0x78t
        0x88t
        0x83t
        0x9et
        0xb9t
        0xd0t
        0x6bt
        0xbdt
        0xdct
        0x7ft
        0x81t
        0x98t
        0xb3t
        0xcet
        0x49t
        0xdbt
        0x76t
        0x9at
        0xb5t
        0xc4t
        0x57t
        0xf9t
        0x10t
        0x30t
        0x50t
        0xf0t
        0xbt
        0x1dt
        0x27t
        0x69t
        0xbbt
        0xd6t
        0x61t
        0xa3t
        0xfet
        0x19t
        0x2bt
        0x7dt
        0x87t
        0x92t
        0xadt
        0xect
        0x2ft
        0x71t
        0x93t
        0xaet
        0xe9t
        0x20t
        0x60t
        0xa0t
        0xfbt
        0x16t
        0x3at
        0x4et
        0xd2t
        0x6dt
        0xb7t
        0xc2t
        0x5dt
        0xe7t
        0x32t
        0x56t
        0xfat
        0x15t
        0x3ft
        0x41t
        0xc3t
        0x5et
        0xe2t
        0x3dt
        0x47t
        0xc9t
        0x40t
        0xc0t
        0x5bt
        0xedt
        0x2ct
        0x74t
        0x9ct
        0xbft
        0xdat
        0x75t
        0x9ft
        0xbat
        0xd5t
        0x64t
        0xact
        0xeft
        0x2at
        0x7et
        0x82t
        0x9dt
        0xbct
        0xdft
        0x7at
        0x8et
        0x89t
        0x80t
        0x9bt
        0xb6t
        0xc1t
        0x58t
        0xe8t
        0x23t
        0x65t
        0xaft
        0xeat
        0x25t
        0x6ft
        0xb1t
        0xc8t
        0x43t
        0xc5t
        0x54t
        0xfct
        0x1ft
        0x21t
        0x63t
        0xa5t
        0xf4t
        0x7t
        0x9t
        0x1bt
        0x2dt
        0x77t
        0x99t
        0xb0t
        0xcbt
        0x46t
        0xcat
        0x45t
        0xcft
        0x4at
        0xdet
        0x79t
        0x8bt
        0x86t
        0x91t
        0xa8t
        0xe3t
        0x3et
        0x42t
        0xc6t
        0x51t
        0xf3t
        0xet
        0x12t
        0x36t
        0x5at
        0xeet
        0x29t
        0x7bt
        0x8dt
        0x8ct
        0x8ft
        0x8at
        0x85t
        0x94t
        0xa7t
        0xf2t
        0xdt
        0x17t
        0x39t
        0x4bt
        0xddt
        0x7ct
        0x84t
        0x97t
        0xa2t
        0xfdt
        0x1ct
        0x24t
        0x6ct
        0xb4t
        0xc7t
        0x52t
        0xf6t
        0x1t
    .end array-data

    .line 137
    :array_2
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

    .line 177
    :array_3
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

    .line 217
    :array_4
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

    .line 223
    :array_5
    .array-data 0x1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_6
    .array-data 0x1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_7
    .array-data 0x1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_8
    .array-data 0x1
        0x0t
        0x8t
        0x10t
        0x20t
    .end array-data

    :array_9
    .array-data 0x1
        0x0t
        0x8t
        0x18t
        0x20t
    .end array-data

    .line 237
    :array_a
    .array-data 0x1
        0x0t
        0x18t
        0x10t
        0x8t
    .end array-data

    :array_b
    .array-data 0x1
        0x0t
        0x20t
        0x18t
        0x10t
    .end array-data

    :array_c
    .array-data 0x1
        0x0t
        0x28t
        0x20t
        0x18t
    .end array-data

    :array_d
    .array-data 0x1
        0x0t
        0x30t
        0x28t
        0x18t
    .end array-data

    :array_e
    .array-data 0x1
        0x0t
        0x38t
        0x28t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 529
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;-><init>(I)V

    .line 530
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .parameter "blockBits"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 537
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 538
    sparse-switch p1, :sswitch_data_0

    .line 570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown blocksize to Rijndael"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :sswitch_0
    const/16 v0, 0x20

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 541
    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    .line 542
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v2

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    .line 543
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v2

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    .line 573
    :goto_0
    iput p1, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->blockBits:I

    .line 574
    return-void

    .line 546
    :sswitch_1
    const/16 v0, 0x28

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 547
    const-wide v0, 0xffffffffffL

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    .line 548
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v3

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    .line 549
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v3

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    goto :goto_0

    .line 552
    :sswitch_2
    const/16 v0, 0x30

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 553
    const-wide v0, 0xffffffffffffL

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    .line 554
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v4

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    .line 555
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v4

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    goto :goto_0

    .line 558
    :sswitch_3
    const/16 v0, 0x38

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 559
    const-wide v0, 0xffffffffffffffL

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    .line 560
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v5

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    .line 561
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v5

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    goto :goto_0

    .line 564
    :sswitch_4
    const/16 v0, 0x40

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 565
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    .line 566
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v6

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    .line 567
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v6

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    goto :goto_0

    .line 538
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xc0 -> :sswitch_2
        0xe0 -> :sswitch_3
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method private InvMixColumn()V
    .locals 18

    .prologue
    .line 383
    const-wide/16 v12, 0x0

    .local v12, r3:J
    move-wide v10, v12

    .local v10, r2:J
    move-wide v8, v12

    .local v8, r1:J
    move-wide v6, v12

    .line 384
    .local v6, r0:J
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v5, v14, :cond_4

    .line 385
    move-object/from16 v0, p0

    iget-wide v14, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v1, v14

    .line 386
    .local v1, a0:I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v2, v14

    .line 387
    .local v2, a1:I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v3, v14

    .line 388
    .local v3, a2:I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v4, v14

    .line 393
    .local v4, a3:I
    if-eqz v1, :cond_0

    sget-object v14, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v15, v1, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v1, v14, 0xff

    .line 394
    :goto_1
    if-eqz v2, :cond_1

    sget-object v14, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v15, v2, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v2, v14, 0xff

    .line 395
    :goto_2
    if-eqz v3, :cond_2

    sget-object v14, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v15, v3, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v3, v14, 0xff

    .line 396
    :goto_3
    if-eqz v4, :cond_3

    sget-object v14, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v15, v4, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v4, v14, 0xff

    .line 398
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v15

    xor-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v15

    xor-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v15

    xor-int/2addr v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v5

    or-long/2addr v6, v14

    .line 400
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v15

    xor-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v15

    xor-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v15

    xor-int/2addr v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v5

    or-long/2addr v8, v14

    .line 402
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v15

    xor-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v15

    xor-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v15

    xor-int/2addr v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v5

    or-long/2addr v10, v14

    .line 404
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v15

    xor-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v15

    xor-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v15

    xor-int/2addr v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v5

    or-long/2addr v12, v14

    .line 384
    add-int/lit8 v5, v5, 0x8

    goto/16 :goto_0

    .line 393
    :cond_0
    const/4 v1, -0x1

    goto/16 :goto_1

    .line 394
    :cond_1
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 395
    :cond_2
    const/4 v3, -0x1

    goto/16 :goto_3

    .line 396
    :cond_3
    const/4 v4, -0x1

    goto/16 :goto_4

    .line 407
    .end local v1           #a0:I
    .end local v2           #a1:I
    .end local v3           #a2:I
    .end local v4           #a3:I
    :cond_4
    move-object/from16 v0, p0

    iput-wide v6, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    .line 408
    move-object/from16 v0, p0

    iput-wide v8, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 409
    move-object/from16 v0, p0

    iput-wide v10, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 410
    move-object/from16 v0, p0

    iput-wide v12, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 411
    return-void
.end method

.method private KeyAddition([J)V
    .locals 4
    .parameter "rk"

    .prologue
    .line 306
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    .line 307
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 308
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    const/4 v2, 0x2

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 309
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/4 v2, 0x3

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 310
    return-void
.end method

.method private MixColumn()V
    .locals 18

    .prologue
    .line 353
    const-wide/16 v12, 0x0

    .local v12, r3:J
    move-wide v10, v12

    .local v10, r2:J
    move-wide v8, v12

    .local v8, r1:J
    move-wide v6, v12

    .line 355
    .local v6, r0:J
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v5, v14, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-wide v14, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v1, v14

    .line 357
    .local v1, a0:I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v2, v14

    .line 358
    .local v2, a1:I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v3, v14

    .line 359
    .local v3, a2:I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v4, v14

    .line 361
    .local v4, a3:I
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v15

    xor-int/2addr v14, v15

    xor-int/2addr v14, v3

    xor-int/2addr v14, v4

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v5

    or-long/2addr v6, v14

    .line 363
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v15

    xor-int/2addr v14, v15

    xor-int/2addr v14, v4

    xor-int/2addr v14, v1

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v5

    or-long/2addr v8, v14

    .line 365
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v15

    xor-int/2addr v14, v15

    xor-int/2addr v14, v1

    xor-int/2addr v14, v2

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v5

    or-long/2addr v10, v14

    .line 367
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v15

    xor-int/2addr v14, v15

    xor-int/2addr v14, v2

    xor-int/2addr v14, v3

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v5

    or-long/2addr v12, v14

    .line 355
    add-int/lit8 v5, v5, 0x8

    goto :goto_0

    .line 370
    .end local v1           #a0:I
    .end local v2           #a1:I
    .end local v3           #a2:I
    .end local v4           #a3:I
    :cond_0
    move-object/from16 v0, p0

    iput-wide v6, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    .line 371
    move-object/from16 v0, p0

    iput-wide v8, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 372
    move-object/from16 v0, p0

    iput-wide v10, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 373
    move-object/from16 v0, p0

    iput-wide v12, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 374
    return-void
.end method

.method private ShiftRow([B)V
    .locals 3
    .parameter "shiftsSC"

    .prologue
    .line 321
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 322
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 323
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 324
    return-void
.end method

.method private Substitution([B)V
    .locals 2
    .parameter "box"

    .prologue
    .line 341
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    invoke-direct {p0, v0, v1, p1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    .line 342
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    invoke-direct {p0, v0, v1, p1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 343
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    invoke-direct {p0, v0, v1, p1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 344
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    invoke-direct {p0, v0, v1, p1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 345
    return-void
.end method

.method private applyS(J[B)J
    .locals 7
    .parameter "r"
    .parameter "box"

    .prologue
    .line 327
    const-wide/16 v1, 0x0

    .line 329
    .local v1, res:J
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v0, v3, :cond_0

    .line 330
    shr-long v3, p1, v0

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    .line 329
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 333
    :cond_0
    return-wide v1
.end method

.method private decryptBlock([[J)V
    .locals 2
    .parameter "rk"

    .prologue
    .line 701
    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    .line 702
    sget-object v1, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    .line 703
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    .line 708
    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v0, v1, -0x1

    .local v0, r:I
    :goto_0
    if-lez v0, :cond_0

    .line 709
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    .line 710
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->InvMixColumn()V

    .line 711
    sget-object v1, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    .line 712
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    .line 708
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 718
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    .line 719
    return-void
.end method

.method private encryptBlock([[J)V
    .locals 2
    .parameter "rk"

    .prologue
    .line 665
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    .line 670
    const/4 v0, 0x1

    .local v0, r:I
    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    if-ge v0, v1, :cond_0

    .line 671
    sget-object v1, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    .line 672
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    .line 673
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->MixColumn()V

    .line 674
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_0
    sget-object v1, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    .line 681
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    .line 682
    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    .line 683
    return-void
.end method

.method private generateWorkingKey([B)[[J
    .locals 19
    .parameter "key"

    .prologue
    .line 419
    const/4 v8, 0x0

    .line 420
    .local v8, rconpointer:I
    move-object/from16 v0, p1

    array-length v12, v0

    mul-int/lit8 v7, v12, 0x8

    .line 421
    .local v7, keyBits:I
    const/4 v12, 0x4

    const/16 v13, 0x40

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[B

    .line 422
    .local v11, tk:[[B
    const/16 v12, 0xf

    const/4 v13, 0x4

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    .line 424
    .local v2, W:[[J
    sparse-switch v7, :sswitch_data_0

    .line 441
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Key length not 128/160/192/224/256 bits."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 426
    :sswitch_0
    const/4 v1, 0x4

    .line 444
    .local v1, KC:I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->blockBits:I

    if-lt v7, v12, :cond_0

    .line 445
    add-int/lit8 v12, v1, 0x6

    move-object/from16 v0, p0

    iput v12, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    .line 453
    :goto_1
    const/4 v4, 0x0

    .line 455
    .local v4, index:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_1

    .line 456
    rem-int/lit8 v12, v3, 0x4

    aget-object v12, v11, v12

    div-int/lit8 v13, v3, 0x4

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aget-byte v14, p1, v4

    aput-byte v14, v12, v13

    .line 455
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_2

    .line 429
    .end local v1           #KC:I
    .end local v3           #i:I
    .end local v4           #index:I
    :sswitch_1
    const/4 v1, 0x5

    .line 430
    .restart local v1       #KC:I
    goto :goto_0

    .line 432
    .end local v1           #KC:I
    :sswitch_2
    const/4 v1, 0x6

    .line 433
    .restart local v1       #KC:I
    goto :goto_0

    .line 435
    .end local v1           #KC:I
    :sswitch_3
    const/4 v1, 0x7

    .line 436
    .restart local v1       #KC:I
    goto :goto_0

    .line 438
    .end local v1           #KC:I
    :sswitch_4
    const/16 v1, 0x8

    .line 439
    .restart local v1       #KC:I
    goto :goto_0

    .line 447
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v12, v12, 0x8

    add-int/lit8 v12, v12, 0x6

    move-object/from16 v0, p0

    iput v12, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    goto :goto_1

    .line 459
    .restart local v3       #i:I
    .restart local v4       #index:I
    :cond_1
    const/4 v10, 0x0

    .line 464
    .local v10, t:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    if-ge v6, v1, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v13, v13, 0x8

    mul-int/2addr v12, v13

    if-ge v10, v12, :cond_4

    .line 465
    const/4 v3, 0x0

    :goto_4
    const/4 v12, 0x4

    if-ge v3, v12, :cond_2

    .line 466
    move-object/from16 v0, p0

    iget v12, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v12, v12, 0x8

    div-int v12, v10, v12

    aget-object v12, v2, v12

    aget-wide v13, v12, v3

    aget-object v15, v11, v3

    aget-byte v15, v15, v6

    and-int/lit16 v15, v15, 0xff

    int-to-long v15, v15

    mul-int/lit8 v17, v10, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    move/from16 v18, v0

    rem-int v17, v17, v18

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    aput-wide v13, v12, v3

    .line 465
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 464
    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .end local v8           #rconpointer:I
    .local v9, rconpointer:I
    :cond_3
    move v8, v9

    .line 474
    .end local v9           #rconpointer:I
    .restart local v8       #rconpointer:I
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v13, v13, 0x8

    mul-int/2addr v12, v13

    if-ge v10, v12, :cond_e

    .line 475
    const/4 v3, 0x0

    :goto_5
    const/4 v12, 0x4

    if-ge v3, v12, :cond_5

    .line 476
    aget-object v12, v11, v3

    const/4 v13, 0x0

    aget-byte v14, v12, v13

    sget-object v15, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    add-int/lit8 v16, v3, 0x1

    rem-int/lit8 v16, v16, 0x4

    aget-object v16, v11, v16

    add-int/lit8 v17, v1, -0x1

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 475
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 478
    :cond_5
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x0

    aget-byte v14, v12, v13

    sget-object v15, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->rcon:[I

    add-int/lit8 v9, v8, 0x1

    .end local v8           #rconpointer:I
    .restart local v9       #rconpointer:I
    aget v15, v15, v8

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 480
    const/4 v12, 0x6

    if-gt v1, v12, :cond_7

    .line 481
    const/4 v6, 0x1

    :goto_6
    if-ge v6, v1, :cond_c

    .line 482
    const/4 v3, 0x0

    :goto_7
    const/4 v12, 0x4

    if-ge v3, v12, :cond_6

    .line 483
    aget-object v12, v11, v3

    aget-byte v13, v12, v6

    aget-object v14, v11, v3

    add-int/lit8 v15, v6, -0x1

    aget-byte v14, v14, v15

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v12, v6

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 481
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 487
    :cond_7
    const/4 v6, 0x1

    :goto_8
    const/4 v12, 0x4

    if-ge v6, v12, :cond_9

    .line 488
    const/4 v3, 0x0

    :goto_9
    const/4 v12, 0x4

    if-ge v3, v12, :cond_8

    .line 489
    aget-object v12, v11, v3

    aget-byte v13, v12, v6

    aget-object v14, v11, v3

    add-int/lit8 v15, v6, -0x1

    aget-byte v14, v14, v15

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v12, v6

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 487
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 492
    :cond_9
    const/4 v3, 0x0

    :goto_a
    const/4 v12, 0x4

    if-ge v3, v12, :cond_a

    .line 493
    aget-object v12, v11, v3

    const/4 v13, 0x4

    aget-byte v14, v12, v13

    sget-object v15, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    aget-object v16, v11, v3

    const/16 v17, 0x3

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 492
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 495
    :cond_a
    const/4 v6, 0x5

    :goto_b
    if-ge v6, v1, :cond_c

    .line 496
    const/4 v3, 0x0

    :goto_c
    const/4 v12, 0x4

    if-ge v3, v12, :cond_b

    .line 497
    aget-object v12, v11, v3

    aget-byte v13, v12, v6

    aget-object v14, v11, v3

    add-int/lit8 v15, v6, -0x1

    aget-byte v14, v14, v15

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v12, v6

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 495
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 505
    :cond_c
    const/4 v6, 0x0

    :goto_d
    if-ge v6, v1, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v13, v13, 0x8

    mul-int/2addr v12, v13

    if-ge v10, v12, :cond_3

    .line 506
    const/4 v3, 0x0

    :goto_e
    const/4 v12, 0x4

    if-ge v3, v12, :cond_d

    .line 507
    move-object/from16 v0, p0

    iget v12, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v12, v12, 0x8

    div-int v12, v10, v12

    aget-object v12, v2, v12

    aget-wide v13, v12, v3

    aget-object v15, v11, v3

    aget-byte v15, v15, v6

    and-int/lit16 v15, v15, 0xff

    int-to-long v15, v15

    mul-int/lit8 v17, v10, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    move/from16 v18, v0

    rem-int v17, v17, v18

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    aput-wide v13, v12, v3

    .line 506
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 505
    :cond_d
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 512
    .end local v9           #rconpointer:I
    .restart local v8       #rconpointer:I
    :cond_e
    return-object v2

    .line 424
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xc0 -> :sswitch_2
        0xe0 -> :sswitch_3
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method private mul0x2(I)B
    .locals 2
    .parameter "b"

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    sget-object v1, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x19

    aget-byte v0, v0, v1

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mul0x3(I)B
    .locals 2
    .parameter "b"

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 264
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    sget-object v1, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mul0x9(I)B
    .locals 2
    .parameter "b"

    .prologue
    .line 271
    if-ltz p1, :cond_0

    .line 272
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 v1, p1, 0xc7

    aget-byte v0, v0, v1

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mul0xb(I)B
    .locals 2
    .parameter "b"

    .prologue
    .line 279
    if-ltz p1, :cond_0

    .line 280
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit8 v1, p1, 0x68

    aget-byte v0, v0, v1

    .line 282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mul0xd(I)B
    .locals 2
    .parameter "b"

    .prologue
    .line 287
    if-ltz p1, :cond_0

    .line 288
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 v1, p1, 0xee

    aget-byte v0, v0, v1

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mul0xe(I)B
    .locals 2
    .parameter "b"

    .prologue
    .line 295
    if-ltz p1, :cond_0

    .line 296
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 v1, p1, 0xdf

    aget-byte v0, v0, v1

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private packBlock([BI)V
    .locals 5
    .parameter "bytes"
    .parameter "off"

    .prologue
    .line 649
    move v0, p2

    .line 651
    .local v0, index:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-eq v2, v3, :cond_0

    .line 652
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    iget-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v3, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 653
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v3, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 654
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v3, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 655
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v3, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 651
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method

.method private shift(JI)J
    .locals 4
    .parameter "r"
    .parameter "shift"

    .prologue
    .line 313
    ushr-long v0, p1, p3

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    sub-int/2addr v2, p3

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    iget-wide v2, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private unpackBlock([BI)V
    .locals 7
    .parameter "bytes"
    .parameter "off"

    .prologue
    .line 633
    move v0, p2

    .line 635
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    iput-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    .line 636
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    iput-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 637
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    iput-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 638
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    iput-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 640
    const/16 v2, 0x8

    .local v2, j:I
    :goto_0
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-eq v2, v3, :cond_0

    .line 641
    iget-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    iput-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    .line 642
    iget-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    iput-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    .line 643
    iget-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    iput-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    .line 644
    iget-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    iput-wide v3, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    .line 640
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 646
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    const-string v0, "Rijndael"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    .line 585
    instance-of v0, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 586
    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->generateWorkingKey([B)[[J

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    .line 587
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->forEncryption:Z

    .line 588
    return-void

    .line 591
    .restart local p2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Rijndael init - "

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
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 604
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rijndael engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 609
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_1
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 613
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_2
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    .line 617
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->unpackBlock([BI)V

    .line 618
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->encryptBlock([[J)V

    .line 619
    invoke-direct {p0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->packBlock([BI)V

    .line 626
    :goto_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 621
    :cond_3
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->unpackBlock([BI)V

    .line 622
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->decryptBlock([[J)V

    .line 623
    invoke-direct {p0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;->packBlock([BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 630
    return-void
.end method
