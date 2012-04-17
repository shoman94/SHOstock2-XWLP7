.class public Lmyorg/bouncycastle/crypto/digests/SHA512Digest;
.super Lmyorg/bouncycastle/crypto/digests/LongDigest;
.source "SHA512Digest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/SHA512Digest;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/digests/LongDigest;-><init>(Lmyorg/bouncycastle/crypto/digests/LongDigest;)V

    .line 32
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 43
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/SHA512Digest;->finish()V

    .line 45
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 46
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 47
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 48
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 49
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 50
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 51
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v0, v1, p1, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 52
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    add-int/lit8 v2, p2, 0x38

    invoke-static {v0, v1, p1, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 54
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    .line 56
    const/16 v0, 0x40

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "SHA-512"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x40

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lmyorg/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 69
    const-wide v0, 0x6a09e667f3bcc908L

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 70
    const-wide v0, -0x4498517a7b3558c5L

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 71
    const-wide v0, 0x3c6ef372fe94f82bL

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 72
    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 73
    const-wide v0, 0x510e527fade682d1L

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 74
    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 75
    const-wide v0, 0x1f83d9abfb41bd6bL

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 76
    const-wide v0, 0x5be0cd19137e2179L

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 77
    return-void
.end method
