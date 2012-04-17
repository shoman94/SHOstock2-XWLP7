.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDSA;
.super Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 229
    const-string v0, "ECDSA"

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;-><init>(Ljava/lang/String;)V

    .line 230
    return-void
.end method
