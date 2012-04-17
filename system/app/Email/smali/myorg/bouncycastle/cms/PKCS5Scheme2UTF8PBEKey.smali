.class public Lmyorg/bouncycastle/cms/PKCS5Scheme2UTF8PBEKey;
.super Lmyorg/bouncycastle/cms/CMSPBEKey;
.source "PKCS5Scheme2UTF8PBEKey.java"


# virtual methods
.method getEncoded(Ljava/lang/String;)[B
    .locals 4
    .parameter "algorithmOid"

    .prologue
    .line 25
    new-instance v0, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    .line 27
    .local v0, gen:Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/PKCS5Scheme2UTF8PBEKey;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v1

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/PKCS5Scheme2UTF8PBEKey;->getSalt()[B

    move-result-object v2

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/PKCS5Scheme2UTF8PBEKey;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->init([B[BI)V

    .line 30
    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v1, p1}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getKeySize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    return-object v1
.end method
