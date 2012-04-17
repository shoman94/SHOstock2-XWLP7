.class public Lmyorg/bouncycastle/jce/provider/JCEMac$GOST28147;
.super Lmyorg/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GOST28147"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEMac;-><init>(Lmyorg/bouncycastle/crypto/Mac;)V

    .line 169
    return-void
.end method
