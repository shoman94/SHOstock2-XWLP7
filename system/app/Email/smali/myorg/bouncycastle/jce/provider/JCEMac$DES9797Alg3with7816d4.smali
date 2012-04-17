.class public Lmyorg/bouncycastle/jce/provider/JCEMac$DES9797Alg3with7816d4;
.super Lmyorg/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DES9797Alg3with7816d4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    new-instance v2, Lmyorg/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v2}, Lmyorg/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEMac;-><init>(Lmyorg/bouncycastle/crypto/Mac;)V

    .line 250
    return-void
.end method
