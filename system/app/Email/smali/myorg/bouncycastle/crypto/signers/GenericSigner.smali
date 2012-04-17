.class public Lmyorg/bouncycastle/crypto/signers/GenericSigner;
.super Ljava/lang/Object;
.source "GenericSigner.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Signer;


# instance fields
.field private final digest:Lmyorg/bouncycastle/crypto/Digest;

.field private final engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forSigning:Z


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Lmyorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .parameter "engine"
    .parameter "digest"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/signers/GenericSigner;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 21
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/GenericSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 22
    return-void
.end method


# virtual methods
.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .parameter "forSigning"
    .parameter "parameters"

    .prologue
    .line 31
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/signers/GenericSigner;->forSigning:Z

    .line 34
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 35
    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 40
    .local v0, k:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "signing requires private key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #k:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p2

    .line 37
    check-cast v0, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0       #k:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 44
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "verification requires public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/signers/GenericSigner;->reset()V

    .line 50
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/GenericSigner;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 51
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/GenericSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 106
    return-void
.end method

.method public update(B)V
    .locals 1
    .parameter "input"

    .prologue
    .line 57
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/GenericSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 58
    return-void
.end method

.method public update([BII)V
    .locals 1
    .parameter "input"
    .parameter "inOff"
    .parameter "length"

    .prologue
    .line 64
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/GenericSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 65
    return-void
.end method

.method public verifySignature([B)Z
    .locals 7
    .parameter "signature"

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-boolean v4, p0, Lmyorg/bouncycastle/crypto/signers/GenericSigner;->forSigning:Z

    if-eqz v4, :cond_0

    .line 89
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "GenericSigner not initialised for verification"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_0
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/GenericSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v1, v4, [B

    .line 93
    .local v1, hash:[B
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/GenericSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v1, v3}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 96
    :try_start_0
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/signers/GenericSigner;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-interface {v4, p1, v5, v6}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2

    .line 98
    .local v2, sig:[B
    invoke-static {v2, v1}, Lmyorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 100
    .end local v2           #sig:[B
    :goto_0
    return v3

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method
