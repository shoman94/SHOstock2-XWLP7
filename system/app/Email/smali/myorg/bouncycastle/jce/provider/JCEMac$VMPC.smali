.class public Lmyorg/bouncycastle/jce/provider/JCEMac$VMPC;
.super Lmyorg/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VMPC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/macs/VMPCMac;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEMac;-><init>(Lmyorg/bouncycastle/crypto/Mac;)V

    .line 178
    return-void
.end method
