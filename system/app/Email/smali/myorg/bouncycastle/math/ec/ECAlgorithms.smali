.class public Lmyorg/bouncycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;
.source "ECAlgorithms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static implShamirsTrick(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 6
    .parameter "P"
    .parameter "k"
    .parameter "Q"
    .parameter "l"

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 48
    .local v3, m:I
    invoke-virtual {p0, p2}, Lmyorg/bouncycastle/math/ec/ECPoint;->add(Lmyorg/bouncycastle/math/ec/ECPoint;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 49
    .local v1, Z:Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 51
    .local v0, R:Lmyorg/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_3

    .line 52
    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECPoint;->twice()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 54
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/math/ec/ECPoint;->add(Lmyorg/bouncycastle/math/ec/ECPoint;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 51
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0, p0}, Lmyorg/bouncycastle/math/ec/ECPoint;->add(Lmyorg/bouncycastle/math/ec/ECPoint;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {v0, p2}, Lmyorg/bouncycastle/math/ec/ECPoint;->add(Lmyorg/bouncycastle/math/ec/ECPoint;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_1

    .line 67
    :cond_3
    return-object v0
.end method

.method public static sumOfTwoMultiplies(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 3
    .parameter "P"
    .parameter "a"
    .parameter "Q"
    .parameter "b"

    .prologue
    .line 8
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 9
    .local v0, c:Lmyorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "P and Q must be on same curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lmyorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrick(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
