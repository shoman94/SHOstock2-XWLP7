.class public Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$Rijndael;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rijndael"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 728
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/RijndaelEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 729
    return-void
.end method
