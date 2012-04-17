.class public Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;
.super Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DH"
.end annotation


# instance fields
.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->l:I

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 8

    .prologue
    const/16 v6, 0x14

    .line 53
    new-instance v2, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v2}, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 55
    .local v2, pGen:Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    if-eqz v4, :cond_0

    .line 56
    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v4, v6, v5}, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 61
    :goto_0
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lmyorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    .line 66
    .local v1, p:Lmyorg/bouncycastle/crypto/params/DHParameters;
    :try_start_0
    const-string v4, "DH"

    const-string v5, "myBC"

    invoke-static {v4, v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 67
    .local v3, params:Ljava/security/AlgorithmParameters;
    new-instance v4, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v6

    iget v7, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->l:I

    invoke-direct {v4, v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object v3

    .line 58
    .end local v1           #p:Lmyorg/bouncycastle/crypto/params/DHParameters;
    .end local v3           #params:Ljava/security/AlgorithmParameters;
    :cond_0
    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v4, v6, v5}, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    goto :goto_0

    .line 68
    .restart local v1       #p:Lmyorg/bouncycastle/crypto/params/DHParameters;
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .parameter "genParamSpec"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 41
    instance-of v1, p1, Ljavax/crypto/spec/DHGenParameterSpec;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "DH parameter generator requires a DHGenParameterSpec for initialisation"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 45
    check-cast v0, Ljavax/crypto/spec/DHGenParameterSpec;

    .line 47
    .local v0, spec:Ljavax/crypto/spec/DHGenParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/DHGenParameterSpec;->getPrimeSize()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    .line 48
    invoke-virtual {v0}, Ljavax/crypto/spec/DHGenParameterSpec;->getExponentSize()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->l:I

    .line 49
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    .line 50
    return-void
.end method
