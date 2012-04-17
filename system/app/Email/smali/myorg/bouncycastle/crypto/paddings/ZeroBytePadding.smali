.class public Lmyorg/bouncycastle/crypto/paddings/ZeroBytePadding;
.super Ljava/lang/Object;
.source "ZeroBytePadding.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .locals 2
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 35
    array-length v1, p1

    sub-int v0, v1, p2

    .line 37
    .local v0, added:I
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 38
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 39
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 0
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 19
    return-void
.end method

.method public padCount([B)I
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 49
    array-length v0, p1

    .line 51
    .local v0, count:I
    :goto_0
    if-lez v0, :cond_0

    .line 52
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p1, v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v0

    return v1

    .line 56
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
