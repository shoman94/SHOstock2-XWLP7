.class public Lmyorg/bouncycastle/jce/provider/JDKDSASigner$dsa224;
.super Lmyorg/bouncycastle/jce/provider/JDKDSASigner;
.source "JDKDSASigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKDSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dsa224"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lmyorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    new-instance v1, Lmyorg/bouncycastle/crypto/signers/DSASigner;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/signers/DSASigner;-><init>()V

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;-><init>(Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/DSA;)V

    .line 178
    return-void
.end method
