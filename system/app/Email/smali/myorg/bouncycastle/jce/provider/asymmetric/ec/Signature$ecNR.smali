.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecNR;
.super Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ecNR"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 130
    new-instance v0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v1, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;-><init>()V

    new-instance v2, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$StdDSAEncoder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$StdDSAEncoder;-><init>(Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$1;)V

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature;-><init>(Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/DSA;Lmyorg/bouncycastle/jce/provider/DSAEncoder;)V

    .line 131
    return-void
.end method
