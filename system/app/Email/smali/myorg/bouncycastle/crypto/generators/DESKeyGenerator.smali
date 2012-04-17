.class public Lmyorg/bouncycastle/crypto/generators/DESKeyGenerator;
.super Lmyorg/bouncycastle/crypto/CipherKeyGenerator;
.source "DESKeyGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 2

    .prologue
    .line 28
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 31
    .local v0, newKey:[B
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 33
    invoke-static {v0}, Lmyorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 34
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmyorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    return-object v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 3
    .parameter "param"

    .prologue
    const/16 v2, 0x8

    .line 17
    invoke-super {p0, p1}, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 19
    iget v0, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 20
    :cond_0
    iput v2, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    .line 25
    :cond_1
    return-void

    .line 21
    :cond_2
    iget v0, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    if-eq v0, v2, :cond_1

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key must be 64 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
