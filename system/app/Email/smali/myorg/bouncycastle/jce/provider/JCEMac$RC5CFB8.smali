.class public Lmyorg/bouncycastle/jce/provider/JCEMac$RC5CFB8;
.super Lmyorg/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RC5CFB8"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/RC532Engine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/RC532Engine;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEMac;-><init>(Lmyorg/bouncycastle/crypto/Mac;)V

    .line 223
    return-void
.end method
