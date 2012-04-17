.class public Lmyorg/bouncycastle/jce/provider/JCEMac$PBEWithSHA;
.super Lmyorg/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 396
    new-instance v0, Lmyorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/macs/HMac;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xa0

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEMac;-><init>(Lmyorg/bouncycastle/crypto/Mac;III)V

    .line 397
    return-void
.end method
