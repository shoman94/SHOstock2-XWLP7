.class public Lmyorg/bouncycastle/crypto/CipherKeyGenerator;
.super Ljava/lang/Object;
.source "CipherKeyGenerator.java"


# instance fields
.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 2

    .prologue
    .line 29
    iget v1, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    new-array v0, v1, [B

    .line 31
    .local v0, key:[B
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 33
    return-object v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 19
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    .line 20
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    .line 21
    return-void
.end method
