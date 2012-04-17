.class public Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;
.super Ljava/lang/Object;
.source "GOST3410ValidationParameters.java"


# instance fields
.field private c:I

.field private cL:J

.field private x0:I

.field private x0L:J


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "x0"
    .parameter "c"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    .line 12
    iput p2, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    .line 13
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .parameter "x0L"
    .parameter "cL"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    .line 17
    iput-wide p3, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 37
    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    if-nez v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 41
    check-cast v0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    .line 43
    .local v0, other:Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;
    iget v2, v0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    if-ne v2, v3, :cond_0

    .line 47
    iget v2, v0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    if-ne v2, v3, :cond_0

    .line 51
    iget-wide v2, v0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    iget-wide v4, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 55
    iget-wide v2, v0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    iget-wide v4, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 59
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 63
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method
