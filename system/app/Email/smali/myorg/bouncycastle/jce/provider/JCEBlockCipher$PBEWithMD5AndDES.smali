.class public Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndDES;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMD5AndDES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 800
    new-instance v0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 801
    return-void
.end method
