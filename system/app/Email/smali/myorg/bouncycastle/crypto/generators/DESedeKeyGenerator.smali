.class public Lmyorg/bouncycastle/crypto/generators/DESedeKeyGenerator;
.super Lmyorg/bouncycastle/crypto/generators/DESKeyGenerator;
.source "DESedeKeyGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 3

    .prologue
    .line 33
    iget v1, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    new-array v0, v1, [B

    .line 36
    .local v0, newKey:[B
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 38
    invoke-static {v0}, Lmyorg/bouncycastle/crypto/params/DESedeParameters;->setOddParity([B)V

    .line 39
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    return-object v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 4
    .parameter "param"

    .prologue
    const/16 v3, 0x18

    const/16 v2, 0x10

    .line 17
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    .line 18
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    .line 20
    iget v0, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 21
    :cond_0
    iput v3, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    .line 30
    :cond_1
    :goto_0
    return-void

    .line 22
    :cond_2
    iget v0, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    .line 23
    iput v2, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    goto :goto_0

    .line 24
    :cond_3
    iget v0, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    if-eq v0, v2, :cond_1

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DESede key must be 192 or 128 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
