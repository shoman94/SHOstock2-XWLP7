.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECMQV;
.super Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;
.source "KeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECMQV"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    const-string v0, "ECMQV"

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;-><init>(Ljava/lang/String;)V

    .line 147
    return-void
.end method
