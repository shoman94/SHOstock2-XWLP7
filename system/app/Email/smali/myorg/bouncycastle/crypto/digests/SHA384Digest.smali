.class public Lmyorg/bouncycastle/crypto/digests/SHA384Digest;
.super Lmyorg/bouncycastle/crypto/digests/LongDigest;
.source "SHA384Digest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/SHA384Digest;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/digests/LongDigest;-><init>(Lmyorg/bouncycastle/crypto/digests/LongDigest;)V

    .line 33
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 44
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/SHA384Digest;->finish()V

    .line 46
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 47
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 48
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 49
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 50
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 51
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 53
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/SHA384Digest;->reset()V

    .line 55
    const/16 v0, 0x30

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "SHA-384"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x30

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lmyorg/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 68
    const-wide v0, -0x344462a23efa6128L

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 69
    const-wide v0, 0x629a292a367cd507L

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 70
    const-wide v0, -0x6ea6fea5cf8f22e9L

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 71
    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 72
    const-wide v0, 0x67332667ffc00b31L

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 73
    const-wide v0, -0x714bb57897a7eaefL

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 74
    const-wide v0, -0x24f3d1f29b067059L

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 75
    const-wide v0, 0x47b5481dbefa4fa4L

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 76
    return-void
.end method
