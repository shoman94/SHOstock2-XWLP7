.class Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/provider/DSAEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CVCDSAEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 197
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;-><init>()V

    return-void
.end method

.method private makeUnsigned(Ljava/math/BigInteger;)[B
    .locals 5
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 218
    .local v0, res:[B
    aget-byte v2, v0, v4

    if-nez v2, :cond_0

    .line 219
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 221
    .local v1, tmp:[B
    const/4 v2, 0x1

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    .end local v1           #tmp:[B
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public decode([B)[Ljava/math/BigInteger;
    .locals 7
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 230
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/math/BigInteger;

    .line 232
    .local v2, sig:[Ljava/math/BigInteger;
    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 233
    .local v0, first:[B
    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 235
    .local v1, second:[B
    array-length v3, v0

    invoke-static {p1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    array-length v3, v0

    array-length v4, v1

    invoke-static {p1, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v2, v5

    .line 239
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v2, v6

    .line 241
    return-object v2
.end method

.method public encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 6
    .parameter "r"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 200
    .local v0, first:[B
    invoke-direct {p0, p2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object v2

    .line 203
    .local v2, second:[B
    array-length v3, v0

    array-length v4, v2

    if-le v3, v4, :cond_0

    .line 204
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 209
    .local v1, res:[B
    :goto_0
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    array-length v3, v1

    array-length v4, v2

    sub-int/2addr v3, v4

    array-length v4, v2

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    return-object v1

    .line 206
    .end local v1           #res:[B
    :cond_0
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .restart local v1       #res:[B
    goto :goto_0
.end method
