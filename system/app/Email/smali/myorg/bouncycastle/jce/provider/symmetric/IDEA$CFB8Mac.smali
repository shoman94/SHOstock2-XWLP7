.class public Lmyorg/bouncycastle/jce/provider/symmetric/IDEA$CFB8Mac;
.super Lmyorg/bouncycastle/jce/provider/JCEMac;
.source "IDEA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/IDEA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFB8Mac"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEMac;-><init>(Lmyorg/bouncycastle/crypto/Mac;)V

    .line 168
    return-void
.end method
