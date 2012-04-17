.class public Lmyorg/bouncycastle/jce/provider/JCERSACipher$PKCS1v1_5Padding;
.super Lmyorg/bouncycastle/jce/provider/JCERSACipher;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCERSACipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS1v1_5Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 395
    new-instance v0, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCERSACipher;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 396
    return-void
.end method
