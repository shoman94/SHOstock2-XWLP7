.class public Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACTIGER;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA512;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA384;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA256;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA224;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA1;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$RIPEMD160HMAC;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$RIPEMD128HMAC;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$MD5HMAC;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$MD4HMAC;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$MD2HMAC;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$VMPCKSA3;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$VMPC;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$HC256;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$HC128;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$Salsa20;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$XTEA;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$TEA;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$CAST6;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$Serpent;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$Rijndael;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$GOST28147;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$RC6;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$RC564;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$RC5;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$RC4;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$RC2;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$Twofish;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$Blowfish;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$Skipjack;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede3;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;,
        Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$DES;
    }
.end annotation


# instance fields
.field protected algName:Ljava/lang/String;

.field protected defaultKeySize:I

.field protected engine:Lmyorg/bouncycastle/crypto/CipherKeyGenerator;

.field protected keySize:I

.field protected uninitialised:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILmyorg/bouncycastle/crypto/CipherKeyGenerator;)V
    .locals 1
    .parameter "algName"
    .parameter "defaultKeySize"
    .parameter "engine"

    .prologue
    .line 25
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    .line 26
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    .line 27
    iput p2, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    iput p2, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->keySize:I

    .line 28
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lmyorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 29
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    .prologue
    .line 53
    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lmyorg/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iget v3, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    .line 58
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lmyorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 3
    .parameter "keySize"
    .parameter "random"

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lmyorg/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v2, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v2, p2, p1}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 3
    .parameter "random"

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lmyorg/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;

    iget v2, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, p1, v2}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    .line 41
    :cond_0
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
