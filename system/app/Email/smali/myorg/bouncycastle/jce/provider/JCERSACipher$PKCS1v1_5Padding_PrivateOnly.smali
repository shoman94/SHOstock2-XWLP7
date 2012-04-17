.class public Lmyorg/bouncycastle/jce/provider/JCERSACipher$PKCS1v1_5Padding_PrivateOnly;
.super Lmyorg/bouncycastle/jce/provider/JCERSACipher;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCERSACipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS1v1_5Padding_PrivateOnly"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 401
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v3, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/JCERSACipher;-><init>(ZZLmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 402
    return-void
.end method
