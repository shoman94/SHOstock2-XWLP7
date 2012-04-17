.class public Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;
.super Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCEElGamalCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher$PKCS1v1_5Padding;,
        Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher$NoPadding;
    }
.end annotation


# instance fields
.field private cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private paramSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 44
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 45
    new-instance v0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    .line 46
    return-void
.end method

.method private initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 6
    .parameter "pSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/MGF1ParameterSpec;

    .line 50
    .local v1, mgfParams:Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lmyorg/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 52
    .local v0, digest:Lmyorg/bouncycastle/crypto/Digest;
    if-nez v0, :cond_0

    .line 53
    new-instance v2, Ljavax/crypto/NoSuchPaddingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no match on OAEP constructor for digest algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_0
    new-instance v3, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    new-instance v4, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v5, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v5}, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v2

    check-cast v2, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v2}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v2

    invoke-direct {v4, v5, v0, v2}, Lmyorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Lmyorg/bouncycastle/crypto/Digest;[B)V

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    .line 59
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 60
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 5
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
    .line 215
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v3, p1, p2, p3}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    .line 218
    :try_start_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->doFinal()[B
    :try_end_0
    .catch Lmyorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 223
    .local v2, out:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-eq v1, v3, :cond_0

    .line 224
    add-int v3, p5, v1

    aget-byte v4, v2, v1

    aput-byte v4, p4, v3

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v1           #i:I
    .end local v2           #out:[B
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v3, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    .end local v0           #e:Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
    .restart local v1       #i:I
    .restart local v2       #out:[B
    :cond_0
    array-length v3, v2

    return v3
.end method

.method protected engineDoFinal([BII)[B
    .locals 3
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
    .line 203
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v1, p1, p2, p3}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    .line 205
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->doFinal()[B
    :try_end_0
    .catch Lmyorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 3
    .parameter "key"

    .prologue
    .line 71
    instance-of v1, p1, Lmyorg/bouncycastle/jce/interfaces/ElGamalKey;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 72
    check-cast v0, Lmyorg/bouncycastle/jce/interfaces/ElGamalKey;

    .line 74
    .local v0, k:Lmyorg/bouncycastle/jce/interfaces/ElGamalKey;
    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/ElGamalKey;->getParameters()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 78
    .end local v0           #k:Lmyorg/bouncycastle/jce/interfaces/ElGamalKey;
    :goto_0
    return v1

    .line 75
    :cond_0
    instance-of v1, p1, Ljavax/crypto/interfaces/DHKey;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 76
    check-cast v0, Ljavax/crypto/interfaces/DHKey;

    .line 78
    .local v0, k:Ljavax/crypto/interfaces/DHKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    goto :goto_0

    .line 81
    .end local v0           #k:Ljavax/crypto/interfaces/DHKey;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not an ElGamal key!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .parameter "inputLen"

    .prologue
    .line 85
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    const-string v1, "OAEP"

    const-string v2, "myBC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 93
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2
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
    .line 183
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "can\'t handle parameters in ElGamal"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 188
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 150
    if-nez p3, :cond_2

    .line 151
    instance-of v2, p2, Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;

    if-eqz v2, :cond_0

    .line 152
    check-cast p2, Ljava/security/PublicKey;

    .end local p2
    invoke-static {p2}, Lmyorg/bouncycastle/jce/provider/ElGamalUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .local v0, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    move-object v1, v0

    .line 162
    .end local v0           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .local v1, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_0
    if-eqz p4, :cond_3

    .line 163
    new-instance v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v0, v1, p4}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 166
    .end local v1           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v0       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 176
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown opmode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " passed to ElGamal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    .end local v0           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local p2
    :cond_0
    instance-of v2, p2, Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;

    if-eqz v2, :cond_1

    .line 154
    check-cast p2, Ljava/security/PrivateKey;

    .end local p2
    invoke-static {p2}, Lmyorg/bouncycastle/jce/provider/ElGamalUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .restart local v0       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    move-object v1, v0

    .end local v0           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v1       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 156
    .end local v1           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local p2
    :cond_1
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "unknown key type passed to ElGamal"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown parameter type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    .end local p2
    .restart local v0       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :pswitch_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 179
    :goto_2
    return-void

    .line 173
    :pswitch_1
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2

    .end local v0           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v1       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_3
    move-object v0, v1

    .end local v1           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v0       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_1

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 4
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, md:Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    return-void

    .line 110
    :cond_1
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t support mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 6
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, pad:Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    new-instance v2, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v2}, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    .line 144
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    new-instance v1, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    new-instance v2, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v3, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    goto :goto_0

    .line 120
    :cond_1
    const-string v1, "ISO9796-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    new-instance v1, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    new-instance v2, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;

    new-instance v3, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    goto :goto_0

    .line 122
    :cond_2
    const-string v1, "OAEPPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    .line 124
    :cond_3
    const-string v1, "OAEPWITHMD5ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "MD5"

    const-string v3, "MGF1"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    const-string v5, "MD5"

    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    .line 127
    :cond_4
    const-string v1, "OAEPWITHSHA1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    .line 129
    :cond_5
    const-string v1, "OAEPWITHSHA224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 130
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-224"

    const-string v3, "MGF1"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    const-string v5, "SHA-224"

    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    .line 132
    :cond_6
    const-string v1, "OAEPWITHSHA256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 133
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-256"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    .line 135
    :cond_7
    const-string v1, "OAEPWITHSHA384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 136
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-384"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    .line 138
    :cond_8
    const-string v1, "OAEPWITHSHA512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 139
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-512"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    .line 142
    :cond_9
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unavailable with ElGamal."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"

    .prologue
    .line 197
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 1
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 191
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    .line 192
    const/4 v0, 0x0

    return-object v0
.end method
