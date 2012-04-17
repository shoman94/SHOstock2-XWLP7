.class public Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;
.super Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RC2AlgorithmParameters"
.end annotation


# static fields
.field private static final ekb:[S

.field private static final table:[S


# instance fields
.field private iv:[B

.field private parameterVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 141
    new-array v0, v1, [S

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->table:[S

    .line 163
    new-array v0, v1, [S

    fill-array-data v0, :array_1

    sput-object v0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->ekb:[S

    return-void

    .line 141
    nop

    :array_0
    .array-data 0x2
        0xbdt 0x0t
        0x56t 0x0t
        0xeat 0x0t
        0xf2t 0x0t
        0xa2t 0x0t
        0xf1t 0x0t
        0xact 0x0t
        0x2at 0x0t
        0xb0t 0x0t
        0x93t 0x0t
        0xd1t 0x0t
        0x9ct 0x0t
        0x1bt 0x0t
        0x33t 0x0t
        0xfdt 0x0t
        0xd0t 0x0t
        0x30t 0x0t
        0x4t 0x0t
        0xb6t 0x0t
        0xdct 0x0t
        0x7dt 0x0t
        0xdft 0x0t
        0x32t 0x0t
        0x4bt 0x0t
        0xf7t 0x0t
        0xcbt 0x0t
        0x45t 0x0t
        0x9bt 0x0t
        0x31t 0x0t
        0xbbt 0x0t
        0x21t 0x0t
        0x5at 0x0t
        0x41t 0x0t
        0x9ft 0x0t
        0xe1t 0x0t
        0xd9t 0x0t
        0x4at 0x0t
        0x4dt 0x0t
        0x9et 0x0t
        0xdat 0x0t
        0xa0t 0x0t
        0x68t 0x0t
        0x2ct 0x0t
        0xc3t 0x0t
        0x27t 0x0t
        0x5ft 0x0t
        0x80t 0x0t
        0x36t 0x0t
        0x3et 0x0t
        0xeet 0x0t
        0xfbt 0x0t
        0x95t 0x0t
        0x1at 0x0t
        0xfet 0x0t
        0xcet 0x0t
        0xa8t 0x0t
        0x34t 0x0t
        0xa9t 0x0t
        0x13t 0x0t
        0xf0t 0x0t
        0xa6t 0x0t
        0x3ft 0x0t
        0xd8t 0x0t
        0xct 0x0t
        0x78t 0x0t
        0x24t 0x0t
        0xaft 0x0t
        0x23t 0x0t
        0x52t 0x0t
        0xc1t 0x0t
        0x67t 0x0t
        0x17t 0x0t
        0xf5t 0x0t
        0x66t 0x0t
        0x90t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0x7t 0x0t
        0xb8t 0x0t
        0x60t 0x0t
        0x48t 0x0t
        0xe6t 0x0t
        0x1et 0x0t
        0x53t 0x0t
        0xf3t 0x0t
        0x92t 0x0t
        0xa4t 0x0t
        0x72t 0x0t
        0x8ct 0x0t
        0x8t 0x0t
        0x15t 0x0t
        0x6et 0x0t
        0x86t 0x0t
        0x0t 0x0t
        0x84t 0x0t
        0xfat 0x0t
        0xf4t 0x0t
        0x7ft 0x0t
        0x8at 0x0t
        0x42t 0x0t
        0x19t 0x0t
        0xf6t 0x0t
        0xdbt 0x0t
        0xcdt 0x0t
        0x14t 0x0t
        0x8dt 0x0t
        0x50t 0x0t
        0x12t 0x0t
        0xbat 0x0t
        0x3ct 0x0t
        0x6t 0x0t
        0x4et 0x0t
        0xect 0x0t
        0xb3t 0x0t
        0x35t 0x0t
        0x11t 0x0t
        0xa1t 0x0t
        0x88t 0x0t
        0x8et 0x0t
        0x2bt 0x0t
        0x94t 0x0t
        0x99t 0x0t
        0xb7t 0x0t
        0x71t 0x0t
        0x74t 0x0t
        0xd3t 0x0t
        0xe4t 0x0t
        0xbft 0x0t
        0x3at 0x0t
        0xdet 0x0t
        0x96t 0x0t
        0xet 0x0t
        0xbct 0x0t
        0xat 0x0t
        0xedt 0x0t
        0x77t 0x0t
        0xfct 0x0t
        0x37t 0x0t
        0x6bt 0x0t
        0x3t 0x0t
        0x79t 0x0t
        0x89t 0x0t
        0x62t 0x0t
        0xc6t 0x0t
        0xd7t 0x0t
        0xc0t 0x0t
        0xd2t 0x0t
        0x7ct 0x0t
        0x6at 0x0t
        0x8bt 0x0t
        0x22t 0x0t
        0xa3t 0x0t
        0x5bt 0x0t
        0x5t 0x0t
        0x5dt 0x0t
        0x2t 0x0t
        0x75t 0x0t
        0xd5t 0x0t
        0x61t 0x0t
        0xe3t 0x0t
        0x18t 0x0t
        0x8ft 0x0t
        0x55t 0x0t
        0x51t 0x0t
        0xadt 0x0t
        0x1ft 0x0t
        0xbt 0x0t
        0x5et 0x0t
        0x85t 0x0t
        0xe5t 0x0t
        0xc2t 0x0t
        0x57t 0x0t
        0x63t 0x0t
        0xcat 0x0t
        0x3dt 0x0t
        0x6ct 0x0t
        0xb4t 0x0t
        0xc5t 0x0t
        0xcct 0x0t
        0x70t 0x0t
        0xb2t 0x0t
        0x91t 0x0t
        0x59t 0x0t
        0xdt 0x0t
        0x47t 0x0t
        0x20t 0x0t
        0xc8t 0x0t
        0x4ft 0x0t
        0x58t 0x0t
        0xe0t 0x0t
        0x1t 0x0t
        0xe2t 0x0t
        0x16t 0x0t
        0x38t 0x0t
        0xc4t 0x0t
        0x6ft 0x0t
        0x3bt 0x0t
        0xft 0x0t
        0x65t 0x0t
        0x46t 0x0t
        0xbet 0x0t
        0x7et 0x0t
        0x2dt 0x0t
        0x7bt 0x0t
        0x82t 0x0t
        0xf9t 0x0t
        0x40t 0x0t
        0xb5t 0x0t
        0x1dt 0x0t
        0x73t 0x0t
        0xf8t 0x0t
        0xebt 0x0t
        0x26t 0x0t
        0xc7t 0x0t
        0x87t 0x0t
        0x97t 0x0t
        0x25t 0x0t
        0x54t 0x0t
        0xb1t 0x0t
        0x28t 0x0t
        0xaat 0x0t
        0x98t 0x0t
        0x9dt 0x0t
        0xa5t 0x0t
        0x64t 0x0t
        0x6dt 0x0t
        0x7at 0x0t
        0xd4t 0x0t
        0x10t 0x0t
        0x81t 0x0t
        0x44t 0x0t
        0xeft 0x0t
        0x49t 0x0t
        0xd6t 0x0t
        0xaet 0x0t
        0x2et 0x0t
        0xddt 0x0t
        0x76t 0x0t
        0x5ct 0x0t
        0x2ft 0x0t
        0xa7t 0x0t
        0x1ct 0x0t
        0xc9t 0x0t
        0x9t 0x0t
        0x69t 0x0t
        0x9at 0x0t
        0x83t 0x0t
        0xcft 0x0t
        0x29t 0x0t
        0x39t 0x0t
        0xb9t 0x0t
        0xe9t 0x0t
        0x4ct 0x0t
        0xfft 0x0t
        0x43t 0x0t
        0xabt 0x0t
    .end array-data

    .line 163
    :array_1
    .array-data 0x2
        0x5dt 0x0t
        0xbet 0x0t
        0x9bt 0x0t
        0x8bt 0x0t
        0x11t 0x0t
        0x99t 0x0t
        0x6et 0x0t
        0x4dt 0x0t
        0x59t 0x0t
        0xf3t 0x0t
        0x85t 0x0t
        0xa6t 0x0t
        0x3ft 0x0t
        0xb7t 0x0t
        0x83t 0x0t
        0xc5t 0x0t
        0xe4t 0x0t
        0x73t 0x0t
        0x6bt 0x0t
        0x3at 0x0t
        0x68t 0x0t
        0x5at 0x0t
        0xc0t 0x0t
        0x47t 0x0t
        0xa0t 0x0t
        0x64t 0x0t
        0x34t 0x0t
        0xct 0x0t
        0xf1t 0x0t
        0xd0t 0x0t
        0x52t 0x0t
        0xa5t 0x0t
        0xb9t 0x0t
        0x1et 0x0t
        0x96t 0x0t
        0x43t 0x0t
        0x41t 0x0t
        0xd8t 0x0t
        0xd4t 0x0t
        0x2ct 0x0t
        0xdbt 0x0t
        0xf8t 0x0t
        0x7t 0x0t
        0x77t 0x0t
        0x2at 0x0t
        0xcat 0x0t
        0xebt 0x0t
        0xeft 0x0t
        0x10t 0x0t
        0x1ct 0x0t
        0x16t 0x0t
        0xdt 0x0t
        0x38t 0x0t
        0x72t 0x0t
        0x2ft 0x0t
        0x89t 0x0t
        0xc1t 0x0t
        0xf9t 0x0t
        0x80t 0x0t
        0xc4t 0x0t
        0x6dt 0x0t
        0xaet 0x0t
        0x30t 0x0t
        0x3dt 0x0t
        0xcet 0x0t
        0x20t 0x0t
        0x63t 0x0t
        0xfet 0x0t
        0xe6t 0x0t
        0x1at 0x0t
        0xc7t 0x0t
        0xb8t 0x0t
        0x50t 0x0t
        0xe8t 0x0t
        0x24t 0x0t
        0x17t 0x0t
        0xfct 0x0t
        0x25t 0x0t
        0x6ft 0x0t
        0xbbt 0x0t
        0x6at 0x0t
        0xa3t 0x0t
        0x44t 0x0t
        0x53t 0x0t
        0xd9t 0x0t
        0xa2t 0x0t
        0x1t 0x0t
        0xabt 0x0t
        0xbct 0x0t
        0xb6t 0x0t
        0x1ft 0x0t
        0x98t 0x0t
        0xeet 0x0t
        0x9at 0x0t
        0xa7t 0x0t
        0x2dt 0x0t
        0x4ft 0x0t
        0x9et 0x0t
        0x8et 0x0t
        0xact 0x0t
        0xe0t 0x0t
        0xc6t 0x0t
        0x49t 0x0t
        0x46t 0x0t
        0x29t 0x0t
        0xf4t 0x0t
        0x94t 0x0t
        0x8at 0x0t
        0xaft 0x0t
        0xe1t 0x0t
        0x5bt 0x0t
        0xc3t 0x0t
        0xb3t 0x0t
        0x7bt 0x0t
        0x57t 0x0t
        0xd1t 0x0t
        0x7ct 0x0t
        0x9ct 0x0t
        0xedt 0x0t
        0x87t 0x0t
        0x40t 0x0t
        0x8ct 0x0t
        0xe2t 0x0t
        0xcbt 0x0t
        0x93t 0x0t
        0x14t 0x0t
        0xc9t 0x0t
        0x61t 0x0t
        0x2et 0x0t
        0xe5t 0x0t
        0xcct 0x0t
        0xf6t 0x0t
        0x5et 0x0t
        0xa8t 0x0t
        0x5ct 0x0t
        0xd6t 0x0t
        0x75t 0x0t
        0x8dt 0x0t
        0x62t 0x0t
        0x95t 0x0t
        0x58t 0x0t
        0x69t 0x0t
        0x76t 0x0t
        0xa1t 0x0t
        0x4at 0x0t
        0xb5t 0x0t
        0x55t 0x0t
        0x9t 0x0t
        0x78t 0x0t
        0x33t 0x0t
        0x82t 0x0t
        0xd7t 0x0t
        0xddt 0x0t
        0x79t 0x0t
        0xf5t 0x0t
        0x1bt 0x0t
        0xbt 0x0t
        0xdet 0x0t
        0x26t 0x0t
        0x21t 0x0t
        0x28t 0x0t
        0x74t 0x0t
        0x4t 0x0t
        0x97t 0x0t
        0x56t 0x0t
        0xdft 0x0t
        0x3ct 0x0t
        0xf0t 0x0t
        0x37t 0x0t
        0x39t 0x0t
        0xdct 0x0t
        0xfft 0x0t
        0x6t 0x0t
        0xa4t 0x0t
        0xeat 0x0t
        0x42t 0x0t
        0x8t 0x0t
        0xdat 0x0t
        0xb4t 0x0t
        0x71t 0x0t
        0xb0t 0x0t
        0xcft 0x0t
        0x12t 0x0t
        0x7at 0x0t
        0x4et 0x0t
        0xfat 0x0t
        0x6ct 0x0t
        0x1dt 0x0t
        0x84t 0x0t
        0x0t 0x0t
        0xc8t 0x0t
        0x7ft 0x0t
        0x91t 0x0t
        0x45t 0x0t
        0xaat 0x0t
        0x2bt 0x0t
        0xc2t 0x0t
        0xb1t 0x0t
        0x8ft 0x0t
        0xd5t 0x0t
        0xbat 0x0t
        0xf2t 0x0t
        0xadt 0x0t
        0x19t 0x0t
        0xb2t 0x0t
        0x67t 0x0t
        0x36t 0x0t
        0xf7t 0x0t
        0xft 0x0t
        0xat 0x0t
        0x92t 0x0t
        0x7dt 0x0t
        0xe3t 0x0t
        0x9dt 0x0t
        0xe9t 0x0t
        0x90t 0x0t
        0x3et 0x0t
        0x23t 0x0t
        0x27t 0x0t
        0x66t 0x0t
        0x13t 0x0t
        0xect 0x0t
        0x81t 0x0t
        0x15t 0x0t
        0xbdt 0x0t
        0x22t 0x0t
        0xbft 0x0t
        0x9ft 0x0t
        0x7et 0x0t
        0xa9t 0x0t
        0x51t 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0xfbt 0x0t
        0x2t 0x0t
        0xd3t 0x0t
        0x70t 0x0t
        0x86t 0x0t
        0x31t 0x0t
        0xe7t 0x0t
        0x3bt 0x0t
        0x5t 0x0t
        0x3t 0x0t
        0x54t 0x0t
        0x60t 0x0t
        0x48t 0x0t
        0x65t 0x0t
        0x18t 0x0t
        0xd2t 0x0t
        0xcdt 0x0t
        0x5ft 0x0t
        0x32t 0x0t
        0x88t 0x0t
        0xet 0x0t
        0x35t 0x0t
        0xfdt 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    .line 186
    const/16 v0, 0x3a

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->parameterVersion:I

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->iv:[B

    invoke-static {v0}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 3
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->parameterVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 195
    new-instance v0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->engineGetEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;-><init>([B)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->getEncoded()[B

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 197
    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    iget v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->parameterVersion:I

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->engineGetEncoded()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;-><init>(I[B)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->getEncoded()[B

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_1
    const-string v0, "RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->engineGetEncoded()[B

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .parameter "paramSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 230
    instance-of v1, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_0

    .line 231
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    .end local p1
    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->iv:[B

    .line 247
    :goto_0
    return-void

    .line 232
    .restart local p1
    :cond_0
    instance-of v1, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 233
    check-cast v1, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v0

    .line 234
    .local v0, effKeyBits:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 235
    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    .line 236
    sget-object v1, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->table:[S

    aget-short v1, v1, v0

    iput v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->parameterVersion:I

    .line 242
    :cond_1
    :goto_1
    check-cast p1, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local p1
    invoke-virtual {p1}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->iv:[B

    goto :goto_0

    .line 238
    .restart local p1
    :cond_2
    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->parameterVersion:I

    goto :goto_1

    .line 244
    .end local v0           #effKeyBits:I
    :cond_3
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v2, "IvParameterSpec or RC2ParameterSpec required to initialise a RC2 parameters algorithm parameters object"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit([B)V
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {p1}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->iv:[B

    .line 251
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3
    .parameter "params"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0, p2}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    invoke-static {p1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    move-result-object v0

    .line 257
    .local v0, p:Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->getRC2ParameterVersion()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->getRC2ParameterVersion()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->parameterVersion:I

    .line 261
    :cond_0
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->iv:[B

    .line 268
    .end local v0           #p:Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;
    :goto_0
    return-void

    .line 266
    :cond_1
    const-string v1, "RAW"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->engineInit([B)V

    goto :goto_0

    .line 271
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unknown parameters format in IV parameters object"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const-string v0, "RC2 Parameters"

    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 210
    const-class v0, Ljavax/crypto/spec/RC2ParameterSpec;

    if-ne p1, v0, :cond_1

    .line 211
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->parameterVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 212
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->parameterVersion:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 213
    new-instance v0, Ljavax/crypto/spec/RC2ParameterSpec;

    sget-object v1, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->ekb:[S

    iget v2, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->parameterVersion:I

    aget-short v1, v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->iv:[B

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    .line 221
    :goto_0
    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljavax/crypto/spec/RC2ParameterSpec;

    iget v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->parameterVersion:I

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->iv:[B

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    goto :goto_0

    .line 220
    :cond_1
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_2

    .line 221
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    goto :goto_0

    .line 224
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to RC2 parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
