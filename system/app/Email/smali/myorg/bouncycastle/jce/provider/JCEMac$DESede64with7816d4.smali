.class public Lmyorg/bouncycastle/jce/provider/JCEMac$DESede64with7816d4;
.super Lmyorg/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESede64with7816d4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 240
    new-instance v0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    const/16 v2, 0x40

    new-instance v3, Lmyorg/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;ILmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEMac;-><init>(Lmyorg/bouncycastle/crypto/Mac;)V

    .line 241
    return-void
.end method
