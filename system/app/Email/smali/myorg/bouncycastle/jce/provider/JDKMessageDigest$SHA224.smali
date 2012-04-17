.class public Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$SHA224;
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
    name = "SHA224"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lmyorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    .line 57
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
    .line 60
    invoke-super {p0}, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$SHA224;

    .line 61
    .local v0, d:Lmyorg/bouncycastle/jce/provider/JDKMessageDigest$SHA224;
    new-instance v2, Lmyorg/bouncycastle/crypto/digests/SHA224Digest;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lmyorg/bouncycastle/crypto/Digest;

    check-cast v1, Lmyorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/crypto/digests/SHA224Digest;-><init>(Lmyorg/bouncycastle/crypto/digests/SHA224Digest;)V

    iput-object v2, v0, Lmyorg/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 63
    return-object v0
.end method
