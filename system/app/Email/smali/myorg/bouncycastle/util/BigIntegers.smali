.class public final Lmyorg/bouncycastle/util/BigIntegers;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asUnsignedByteArray(Ljava/math/BigInteger;)[B
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 24
    .local v0, bytes:[B
    aget-byte v2, v0, v4

    if-nez v2, :cond_0

    .line 25
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 27
    .local v1, tmp:[B
    const/4 v2, 0x1

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .end local v1           #tmp:[B
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 5
    .parameter "min"
    .parameter "max"
    .parameter "random"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 45
    .local v0, cmp:I
    if-ltz v0, :cond_0

    .line 46
    if-lez v0, :cond_1

    .line 47
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'min\' may not be greater than \'max\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_2

    .line 54
    sget-object v3, Lmyorg/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lmyorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 65
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 57
    .restart local p0
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_4

    .line 58
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-direct {v2, v3, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 59
    .local v2, x:Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_3

    move-object p0, v2

    .line 60
    goto :goto_0

    .line 57
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    .end local v2           #x:Ljava/math/BigInteger;
    :cond_4
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method
