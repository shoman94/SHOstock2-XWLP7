.class public Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$noneRSA;
.super Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;
.source "JDKDigestSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "noneRSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 284
    new-instance v0, Lmyorg/bouncycastle/jce/provider/util/NullDigest;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/util/NullDigest;-><init>()V

    new-instance v1, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v2, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v2}, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;-><init>(Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 285
    return-void
.end method
