.class public Lmyorg/bouncycastle/jce/provider/JCEMac;
.super Ljavax/crypto/MacSpi;
.source "JCEMac.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JCEMac$PBEWithTiger;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$PBEWithSHA;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$PBEWithRIPEMD160;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$Tiger;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$RIPEMD160;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$RIPEMD128;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$OldSHA512;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$SHA512;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$OldSHA384;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$SHA384;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$SHA256;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$SHA224;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$SHA1;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$MD5;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$MD4;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$MD2;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DES9797Alg3;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DES9797Alg3with7816d4;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DESede64with7816d4;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DESede64;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$RC5CFB8;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$RC2CFB8;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$SkipjackCFB8;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DESedeCFB8;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DESCFB8;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$VMPC;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$GOST28147;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$RC5;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$RC2;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$Skipjack;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DESede;,
        Lmyorg/bouncycastle/jce/provider/JCEMac$DES;
    }
.end annotation


# instance fields
.field private keySize:I

.field private macEngine:Lmyorg/bouncycastle/crypto/Mac;

.field private pbeHash:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Mac;)V
    .locals 1
    .parameter "macEngine"

    .prologue
    .line 48
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 46
    const/16 v0, 0xa0

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 49
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    .line 50
    return-void
.end method

.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Mac;III)V
    .locals 1
    .parameter "macEngine"
    .parameter "pbeType"
    .parameter "pbeHash"
    .parameter "keySize"

    .prologue
    .line 52
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 46
    const/16 v0, 0xa0

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 53
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    .line 54
    iput p2, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 55
    iput p3, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 56
    iput p4, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 57
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEMac;->engineGetMacLength()I

    move-result v1

    new-array v0, v1, [B

    .line 109
    .local v0, out:[B
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lmyorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 111
    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "key is null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    instance-of v2, p1, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 68
    check-cast v0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    .line 70
    .local v0, k:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .line 87
    .end local v0           #k:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    .end local p2
    .local v1, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v2, v1}, Lmyorg/bouncycastle/crypto/Mac;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 88
    return-void

    .line 72
    .end local v1           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v0       #k:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    .restart local p2
    :cond_1
    instance-of v2, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_2

    .line 73
    invoke-static {v0, p2}, Lmyorg/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Lmyorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .restart local v1       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 75
    .end local v1           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_2
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "PBE requires PBE parameters to be set."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    .end local v0           #k:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    :cond_3
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_4

    .line 79
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .end local p2
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    .restart local v1       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 81
    .end local v1           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local p2
    :cond_4
    if-nez p2, :cond_5

    .line 82
    new-instance v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v1       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 84
    .end local v1           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_5
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "unknown parameter type."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineReset()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Mac;->reset()V

    .line 96
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1
    .parameter "input"

    .prologue
    .line 99
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    .line 100
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 103
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 104
    return-void
.end method
