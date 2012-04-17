.class public Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$AES;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 692
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 693
    return-void
.end method
