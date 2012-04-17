.class Lmyorg/bouncycastle/math/ec/FpNafMultiplier;
.super Ljava/lang/Object;
.source "FpNafMultiplier.java"

# interfaces
.implements Lmyorg/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public multiply(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/PreCompInfo;)Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 9
    .parameter "p"
    .parameter "k"
    .parameter "preCompInfo"

    .prologue
    .line 19
    move-object v1, p2

    .line 20
    .local v1, e:Ljava/math/BigInteger;
    const-wide/16 v7, 0x3

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 22
    .local v3, h:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lmyorg/bouncycastle/math/ec/ECPoint;->negate()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 23
    .local v6, neg:Lmyorg/bouncycastle/math/ec/ECPoint;
    move-object v0, p1

    .line 25
    .local v0, R:Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    add-int/lit8 v5, v7, -0x2

    .local v5, i:I
    :goto_0
    if-lez v5, :cond_2

    .line 26
    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECPoint;->twice()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 28
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    .line 29
    .local v4, hBit:Z
    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    .line 31
    .local v2, eBit:Z
    if-eq v4, v2, :cond_0

    .line 32
    if-eqz v4, :cond_1

    move-object v7, p1

    :goto_1
    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/math/ec/ECPoint;->add(Lmyorg/bouncycastle/math/ec/ECPoint;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 25
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    move-object v7, v6

    .line 32
    goto :goto_1

    .line 36
    .end local v2           #eBit:Z
    .end local v4           #hBit:Z
    :cond_2
    return-object v0
.end method
