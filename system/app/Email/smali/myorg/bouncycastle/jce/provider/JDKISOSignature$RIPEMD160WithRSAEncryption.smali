.class public Lmyorg/bouncycastle/jce/provider/JDKISOSignature$RIPEMD160WithRSAEncryption;
.super Lmyorg/bouncycastle/jce/provider/JDKISOSignature;
.source "JDKISOSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKISOSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RIPEMD160WithRSAEncryption"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKISOSignature;-><init>(Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 100
    return-void
.end method
