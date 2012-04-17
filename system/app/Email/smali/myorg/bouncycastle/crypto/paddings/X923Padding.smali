.class public Lmyorg/bouncycastle/crypto/paddings/X923Padding;
.super Ljava/lang/Object;
.source "X923Padding.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# instance fields
.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .locals 2
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 38
    array-length v1, p1

    sub-int/2addr v1, p2

    int-to-byte v0, v1

    .line 40
    .local v0, code:B
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_1

    .line 41
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 42
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 46
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    goto :goto_1

    .line 49
    :cond_1
    aput-byte v0, p1, p2

    .line 51
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
    .line 21
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    .line 22
    return-void
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
    .line 58
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v0, v1, 0xff

    .line 60
    .local v0, count:I
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 61
    new-instance v1, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "pad block corrupted"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    return v0
.end method
