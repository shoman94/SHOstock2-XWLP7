.class public Lmyorg/bouncycastle/crypto/paddings/PKCS7Padding;
.super Ljava/lang/Object;
.source "PKCS7Padding.java"

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

    sub-int/2addr v1, p2

    int-to-byte v0, v1

    .line 37
    .local v0, code:B
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 38
    aput-byte v0, p1, p2

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
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 49
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    .line 51
    .local v0, count:I
    array-length v2, p1

    if-gt v0, v2, :cond_0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    new-instance v2, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "pad block corrupted"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_1
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, v0, :cond_3

    .line 56
    array-length v2, p1

    sub-int/2addr v2, v1

    aget-byte v2, p1, v2

    if-eq v2, v0, :cond_2

    .line 57
    new-instance v2, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "pad block corrupted"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_3
    return v0
.end method
