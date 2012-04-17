.class public Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$Whirlpool;
.super Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;
.source "JDKMessageDigest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Whirlpool"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    .line 226
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-super {p0}, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$Whirlpool;

    .line 230
    .local v0, d:Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$Whirlpool;
    new-instance v2, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lmyorg/bouncycastle/crypto/Digest;

    check-cast v1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;-><init>(Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;)V

    iput-object v2, v0, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 232
    return-object v0
.end method
