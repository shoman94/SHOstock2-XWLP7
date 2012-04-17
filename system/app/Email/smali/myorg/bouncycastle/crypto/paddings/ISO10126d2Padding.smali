.class public Lmyorg/bouncycastle/crypto/paddings/ISO10126d2Padding;
.super Ljava/lang/Object;
.source "ISO10126d2Padding.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# instance fields
.field random:Ljava/security/SecureRandom;


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
    .line 41
    array-length v1, p1

    sub-int/2addr v1, p2

    int-to-byte v0, v1

    .line 43
    .local v0, code:B
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_0

    .line 44
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 45
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 48
    :cond_0
    aput-byte v0, p1, p2

    .line 50
    return v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 1
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 20
    if-eqz p1, :cond_0

    .line 21
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    goto :goto_0
.end method

.method public padCount([B)I
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 57
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v0, v1, 0xff

    .line 59
    .local v0, count:I
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 60
    new-instance v1, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "pad block corrupted"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    return v0
.end method
