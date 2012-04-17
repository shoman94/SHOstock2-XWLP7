.class public Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.super Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCEBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithAESCBC;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndTwofish;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAnd40BitRC2;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAnd128BitRC2;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndDES2Key;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndDES3Key;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHA1AndRC2;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHA1AndDES;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndRC2;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndDES;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$SEED;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$XTEA;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$TEA;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$CAST6;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$CAST5CBC;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$CAST5;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$Serpent;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$Rijndael;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AESOFB;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AESCFB;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AESCBC;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AES;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$RC6;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$RC564;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$RC5;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$RC2CBC;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$RC2;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$Twofish;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BlowfishCBC;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$Blowfish;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$Skipjack;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GOST28147cbc;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GOST28147;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$DESedeCBC;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$DESede;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$DESCBC;,
        Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$DES;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

.field private ivLength:I

.field private ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

.field private modeName:Ljava/lang/String;

.field private padded:Z

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 96
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 87
    iput v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 91
    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 92
    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 94
    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 99
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 100
    return-void
.end method

.method protected constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 102
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 87
    iput v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 91
    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 92
    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 94
    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 105
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 106
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 107
    return-void
.end method

.method protected constructor <init>(Lmyorg/bouncycastle/crypto/BufferedBlockCipher;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 87
    iput v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 91
    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 92
    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 94
    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 112
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 113
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 114
    return-void
.end method

.method private isAEADModeName(Ljava/lang/String;)Z
    .locals 1
    .parameter "modeName"

    .prologue
    .line 548
    const-string v0, "CCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EAX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 8
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 532
    const/4 v7, 0x0

    .line 534
    .local v7, len:I
    if-eqz p3, :cond_0

    .line 535
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v7

    .line 539
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    add-int v1, p5, v7

    invoke-interface {v0, p4, v1}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lmyorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmyorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    add-int/2addr v0, v7

    return v0

    .line 540
    :catch_0
    move-exception v6

    .line 541
    .local v6, e:Lmyorg/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lmyorg/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    .end local v6           #e:Lmyorg/bouncycastle/crypto/DataLengthException;
    :catch_1
    move-exception v6

    .line 543
    .local v6, e:Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v6}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 9
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 504
    const/4 v7, 0x0

    .line 505
    .local v7, len:I
    invoke-virtual {p0, p3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    .line 507
    .local v4, tmp:[B
    if-eqz p3, :cond_0

    .line 508
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v7

    .line 512
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, v4, v7}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lmyorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmyorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    add-int/2addr v7, v0

    .line 519
    array-length v0, v4

    if-ne v7, v0, :cond_1

    .line 527
    .end local v4           #tmp:[B
    :goto_0
    return-object v4

    .line 513
    .restart local v4       #tmp:[B
    :catch_0
    move-exception v6

    .line 514
    .local v6, e:Lmyorg/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lmyorg/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    .end local v6           #e:Lmyorg/bouncycastle/crypto/DataLengthException;
    :catch_1
    move-exception v6

    .line 516
    .local v6, e:Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v6}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    .end local v6           #e:Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
    :cond_1
    new-array v8, v7, [B

    .line 525
    .local v8, out:[B
    invoke-static {v4, v5, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    .line 527
    goto :goto_0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 125
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .parameter "inputLen"

    .prologue
    .line 129
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 133
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_0

    .line 134
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_1

    .line 136
    :try_start_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    const-string v3, "myBC"

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 137
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    :goto_1
    return-object v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1

    .line 141
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 145
    const/4 v2, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_2
    :try_start_1
    const-string v2, "myBC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 150
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v0

    .line 152
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 5
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 438
    .local v1, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_1

    .line 439
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 441
    :try_start_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 448
    :cond_0
    if-nez v1, :cond_1

    .line 449
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t handle parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    :catch_0
    move-exception v2

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    .end local v0           #i:I
    :cond_1
    invoke-virtual {p0, p1, p2, v1, p4}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 456
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 457
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 14
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v11, 0x0

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 277
    const/4 v11, 0x0

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 278
    const/4 v11, 0x0

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 283
    move-object/from16 v0, p2

    instance-of v11, v0, Ljavax/crypto/SecretKey;

    if-nez v11, :cond_0

    .line 284
    new-instance v11, Ljava/security/InvalidKeyException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Key for algorithm "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not suitable for symmetric enryption."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 291
    :cond_0
    if-nez p3, :cond_1

    iget-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v11}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RC5-64"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 292
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "RC5 requires an RC5ParametersSpec to be passed in."

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 300
    :cond_1
    move-object/from16 v0, p2

    instance-of v11, v0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v11, :cond_8

    move-object/from16 v5, p2

    .line 301
    check-cast v5, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    .line 303
    .local v5, k:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 304
    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v11

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 309
    :goto_0
    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 310
    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    .line 311
    .local v7, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    new-instance v11, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getSalt()[B

    move-result-object v12

    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getIterationCount()I

    move-result v13

    invoke-direct {v11, v12, v13}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 321
    :goto_1
    instance-of v11, v7, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v11, :cond_2

    move-object v11, v7

    .line 322
    check-cast v11, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 394
    .end local v5           #k:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    .end local p3
    :cond_2
    :goto_2
    iget v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v11, :cond_16

    instance-of v11, v7, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v11, :cond_16

    .line 395
    move-object/from16 v4, p4

    .line 397
    .local v4, ivRandom:Ljava/security/SecureRandom;
    if-nez v4, :cond_3

    .line 398
    new-instance v4, Ljava/security/SecureRandom;

    .end local v4           #ivRandom:Ljava/security/SecureRandom;
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 401
    .restart local v4       #ivRandom:Ljava/security/SecureRandom;
    :cond_3
    const/4 v11, 0x1

    if-eq p1, v11, :cond_4

    const/4 v11, 0x3

    if-ne p1, v11, :cond_14

    .line 402
    :cond_4
    iget v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-array v3, v11, [B

    .line 404
    .local v3, iv:[B
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 405
    new-instance v8, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v8, v7, v3}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    .end local v7           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .local v8, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    move-object v11, v8

    .line 406
    check-cast v11, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 412
    .end local v3           #iv:[B
    .end local v4           #ivRandom:Ljava/security/SecureRandom;
    :goto_3
    if-eqz p4, :cond_15

    iget-boolean v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    if-eqz v11, :cond_15

    .line 413
    new-instance v7, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    move-object/from16 v0, p4

    invoke-direct {v7, v8, v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 417
    .end local v8           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v7       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_4
    packed-switch p1, :pswitch_data_0

    .line 427
    :try_start_0
    new-instance v11, Ljava/security/InvalidParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unknown opmode "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " passed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, e:Ljava/lang/Exception;
    new-instance v11, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 306
    .end local v1           #e:Ljava/lang/Exception;
    .end local v7           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v5       #k:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    .restart local p3
    :cond_5
    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    goto/16 :goto_0

    .line 312
    :cond_6
    move-object/from16 v0, p3

    instance-of v11, v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v11, :cond_7

    move-object/from16 v11, p3

    .line 313
    check-cast v11, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 314
    iget-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v11}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v11

    invoke-interface {v11}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-static {v5, v0, v11}, Lmyorg/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Lmyorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    .restart local v7       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_1

    .line 317
    .end local v7           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_7
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "PBE requires PBE parameters to be set."

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 324
    .end local v5           #k:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    :cond_8
    if-nez p3, :cond_9

    .line 325
    new-instance v7, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    invoke-direct {v7, v11}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v7       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_2

    .line 326
    .end local v7           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_9
    move-object/from16 v0, p3

    instance-of v11, v0, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v11, :cond_d

    .line 327
    iget v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v11, :cond_b

    move-object/from16 v6, p3

    .line 328
    check-cast v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 330
    .local v6, p:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v6}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v11

    array-length v11, v11

    iget v12, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eq v11, v12, :cond_a

    iget-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v11}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 331
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IV must be "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes long."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 335
    :cond_a
    new-instance v7, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v11, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    invoke-direct {v11, v12}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v6}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v12

    invoke-direct {v7, v11, v12}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    .restart local v7       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    move-object v11, v7

    .line 336
    check-cast v11, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    goto/16 :goto_2

    .line 338
    .end local v6           #p:Ljavax/crypto/spec/IvParameterSpec;
    .end local v7           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_b
    iget-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v12, "ECB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 339
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "ECB mode does not use an IV"

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 342
    :cond_c
    new-instance v7, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    invoke-direct {v7, v11}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v7       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_2

    .line 344
    .end local v7           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_d
    move-object/from16 v0, p3

    instance-of v11, v0, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;

    if-eqz v11, :cond_e

    move-object/from16 v2, p3

    .line 345
    check-cast v2, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;

    .line 347
    .local v2, gost28147Param:Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;
    new-instance v7, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;

    new-instance v11, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    invoke-direct {v11, v12}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p3, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->getSbox()[B

    move-result-object v12

    invoke-direct {v7, v11, v12}, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 350
    .restart local v7       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->getIV()[B

    move-result-object v11

    if-eqz v11, :cond_2

    iget v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v11, :cond_2

    .line 351
    new-instance v8, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->getIV()[B

    move-result-object v11

    invoke-direct {v8, v7, v11}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    .end local v7           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v8       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    move-object v11, v8

    .line 352
    check-cast v11, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .end local v2           #gost28147Param:Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;
    :goto_5
    move-object v7, v8

    .end local v8           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v7       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_2

    .line 354
    .end local v7           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local p3
    :cond_e
    move-object/from16 v0, p3

    instance-of v11, v0, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v11, :cond_f

    move-object/from16 v9, p3

    .line 355
    check-cast v9, Ljavax/crypto/spec/RC2ParameterSpec;

    .line 357
    .local v9, rc2Param:Ljavax/crypto/spec/RC2ParameterSpec;
    new-instance v7, Lmyorg/bouncycastle/crypto/params/RC2Parameters;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    check-cast p3, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v12

    invoke-direct {v7, v11, v12}, Lmyorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    .line 360
    .restart local v7       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    invoke-virtual {v9}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v11

    if-eqz v11, :cond_2

    iget v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v11, :cond_2

    .line 361
    new-instance v8, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v9}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v11

    invoke-direct {v8, v7, v11}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    .end local v7           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v8       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    move-object v11, v8

    .line 362
    check-cast v11, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_5

    .line 364
    .end local v8           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .end local v9           #rc2Param:Ljavax/crypto/spec/RC2ParameterSpec;
    .restart local p3
    :cond_f
    move-object/from16 v0, p3

    instance-of v11, v0, Ljavax/crypto/spec/RC5ParameterSpec;

    if-eqz v11, :cond_13

    move-object/from16 v10, p3

    .line 365
    check-cast v10, Ljavax/crypto/spec/RC5ParameterSpec;

    .line 367
    .local v10, rc5Param:Ljavax/crypto/spec/RC5ParameterSpec;
    new-instance v7, Lmyorg/bouncycastle/crypto/params/RC5Parameters;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    check-cast p3, Ljavax/crypto/spec/RC5ParameterSpec;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getRounds()I

    move-result v12

    invoke-direct {v7, v11, v12}, Lmyorg/bouncycastle/crypto/params/RC5Parameters;-><init>([BI)V

    .line 368
    .restart local v7       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    iget-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v11}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RC5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 369
    iget-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v11}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RC5-32"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 370
    invoke-virtual {v10}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v11

    const/16 v12, 0x20

    if-eq v11, v12, :cond_12

    .line 371
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RC5 already set up for a word size of 32 not "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 375
    :cond_10
    iget-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v11}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RC5-64"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 376
    invoke-virtual {v10}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v11

    const/16 v12, 0x40

    if-eq v11, v12, :cond_12

    .line 377
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RC5 already set up for a word size of 64 not "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 383
    :cond_11
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "RC5 parameters passed to a cipher that is not RC5."

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 386
    :cond_12
    invoke-virtual {v10}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v11

    if-eqz v11, :cond_2

    iget v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v11, :cond_2

    .line 387
    new-instance v8, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v10}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v11

    invoke-direct {v8, v7, v11}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    .end local v7           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v8       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    move-object v11, v8

    .line 388
    check-cast v11, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    goto/16 :goto_5

    .line 391
    .end local v8           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .end local v10           #rc5Param:Ljavax/crypto/spec/RC5ParameterSpec;
    .restart local p3
    :cond_13
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "unknown parameter type."

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 407
    .end local p3
    .restart local v4       #ivRandom:Ljava/security/SecureRandom;
    .restart local v7       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_14
    iget-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v11}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v11

    invoke-interface {v11}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PGPCFB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_16

    .line 408
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "no IV set when one expected"

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 420
    .end local v4           #ivRandom:Ljava/security/SecureRandom;
    :pswitch_0
    :try_start_1
    iget-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v12, 0x1

    invoke-interface {v11, v12, v7}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 432
    :goto_6
    return-void

    .line 424
    :pswitch_1
    iget-object v11, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v12, 0x0

    invoke-interface {v11, v12, v7}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .end local v7           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v8       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_15
    move-object v7, v8

    .end local v8           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v7       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_4

    :cond_16
    move-object v8, v7

    .end local v7           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v8       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_3

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 6
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 161
    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 163
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "ECB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iput v5, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 165
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 229
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CBC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 168
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 169
    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "OFB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 171
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 172
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 174
    .local v1, wordSize:I
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4, v1}, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 176
    .end local v1           #wordSize:I
    :cond_2
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 179
    :cond_3
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CFB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 181
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 182
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 184
    .restart local v1       #wordSize:I
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4, v1}, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 186
    .end local v1           #wordSize:I
    :cond_4
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 189
    :cond_5
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "PGP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "PGPCFBwithIV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 192
    .local v0, inlineIV:Z
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 193
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4, v0}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;Z)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 194
    .end local v0           #inlineIV:Z
    :cond_6
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "OpenPGPCFB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 195
    iput v5, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 196
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 197
    :cond_7
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "SIC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 198
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 199
    iget v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_8

    .line 200
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_8
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v4, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 205
    :cond_9
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CTR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 206
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 207
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v4, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 209
    :cond_a
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "GOFB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 210
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 211
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v4, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 213
    :cond_b
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 214
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 215
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/modes/CTSBlockCipher;

    new-instance v4, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 217
    :cond_c
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 218
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 219
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 220
    :cond_d
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "EAX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 221
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 222
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/modes/EAXBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 223
    :cond_e
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "GCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 224
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 225
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v3, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 227
    :cond_f
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t support mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, paddingName:Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->wrapOnNoPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lmyorg/bouncycastle/crypto/modes/CTSBlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 243
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    .line 245
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string v2, "Only NoPadding can be used with AEAD modes."

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_3
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 248
    :cond_4
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 249
    :cond_5
    const-string v1, "ZEROBYTEPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 250
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/crypto/paddings/ZeroBytePadding;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/paddings/ZeroBytePadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 252
    :cond_6
    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "ISO10126-2PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 254
    :cond_7
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/crypto/paddings/ISO10126d2Padding;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 256
    :cond_8
    const-string v1, "X9.23PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "X923PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 257
    :cond_9
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/crypto/paddings/X923Padding;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/paddings/X923Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 259
    :cond_a
    const-string v1, "ISO7816-4PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "ISO9797-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 261
    :cond_b
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 263
    :cond_c
    const-string v1, "TBCPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 264
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/crypto/paddings/TBCPadding;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/paddings/TBCPadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 267
    :cond_d
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Padding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 496
    :try_start_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I
    :try_end_0
    .catch Lmyorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 497
    :catch_0
    move-exception v6

    .line 498
    .local v6, e:Lmyorg/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lmyorg/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 15
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 468
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move/from16 v0, p3

    invoke-interface {v1, v0}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    move-result v13

    .line 470
    .local v13, length:I
    if-lez v13, :cond_2

    .line 471
    new-array v5, v13, [B

    .line 473
    .local v5, out:[B
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-interface/range {v1 .. v6}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v12

    .line 475
    .local v12, len:I
    if-nez v12, :cond_0

    .line 476
    const/4 v14, 0x0

    .line 490
    .end local v5           #out:[B
    .end local v12           #len:I
    :goto_0
    return-object v14

    .line 477
    .restart local v5       #out:[B
    .restart local v12       #len:I
    :cond_0
    array-length v1, v5

    if-eq v12, v1, :cond_1

    .line 478
    new-array v14, v12, [B

    .line 480
    .local v14, tmp:[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v14, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .end local v14           #tmp:[B
    :cond_1
    move-object v14, v5

    .line 485
    goto :goto_0

    .line 488
    .end local v5           #out:[B
    .end local v12           #len:I
    :cond_2
    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-interface/range {v6 .. v11}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    .line 490
    const/4 v14, 0x0

    goto :goto_0
.end method
