.class public Lmyorg/bouncycastle/jce/provider/JCERSACipher$NoPadding;
.super Lmyorg/bouncycastle/jce/provider/JCERSACipher;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCERSACipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCERSACipher;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 390
    return-void
.end method
