.class public Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$GOST3410;
.super Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GOST3410"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 9

    .prologue
    const/4 v6, 0x2

    .line 125
    new-instance v2, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;

    invoke-direct {v2}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;-><init>()V

    .line 127
    .local v2, pGen:Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    if-eqz v4, :cond_0

    .line 128
    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v4, v6, v5}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 133
    :goto_0
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->generateParameters()Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;

    move-result-object v1

    .line 138
    .local v1, p:Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;
    :try_start_0
    const-string v4, "GOST3410"

    const-string v5, "myBC"

    invoke-static {v4, v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 139
    .local v3, params:Ljava/security/AlgorithmParameters;
    new-instance v4, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    new-instance v5, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;->getA()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;-><init>(Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;)V

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-object v3

    .line 130
    .end local v1           #p:Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;
    .end local v3           #params:Ljava/security/AlgorithmParameters;
    :cond_0
    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v4, v6, v5}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init(IILjava/security/SecureRandom;)V

    goto :goto_0

    .line 141
    .restart local v1       #p:Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
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
    .line 120
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for GOST3410 parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
