.class public Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA;
.super Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 8

    .prologue
    const/16 v6, 0x14

    .line 94
    new-instance v2, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v2}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .line 96
    .local v2, pGen:Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    if-eqz v4, :cond_0

    .line 97
    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v4, v6, v5}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 102
    :goto_0
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lmyorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    .line 107
    .local v1, p:Lmyorg/bouncycastle/crypto/params/DSAParameters;
    :try_start_0
    const-string v4, "DSA"

    const-string v5, "myBC"

    invoke-static {v4, v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 108
    .local v3, params:Ljava/security/AlgorithmParameters;
    new-instance v4, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-object v3

    .line 99
    .end local v1           #p:Lmyorg/bouncycastle/crypto/params/DSAParameters;
    .end local v3           #params:Ljava/security/AlgorithmParameters;
    :cond_0
    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v4, v6, v5}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    goto :goto_0

    .line 109
    .restart local v1       #p:Lmyorg/bouncycastle/crypto/params/DSAParameters;
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 2
    .parameter "strength"
    .parameter "random"

    .prologue
    .line 78
    const/16 v0, 0x200

    if-lt p1, v0, :cond_0

    const/16 v0, 0x400

    if-gt p1, v0, :cond_0

    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "strength must be from 512 - 1024 and a multiple of 64"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    iput p1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    .line 84
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    .line 85
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .parameter "genParamSpec"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for DSA parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
