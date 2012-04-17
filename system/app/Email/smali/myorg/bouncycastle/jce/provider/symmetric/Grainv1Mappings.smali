.class public Lmyorg/bouncycastle/jce/provider/symmetric/Grainv1Mappings;
.super Ljava/util/HashMap;
.source "Grainv1Mappings.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 8
    const-string v0, "Cipher.Grainv1"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.Grainv1$Base"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/Grainv1Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v0, "KeyGenerator.Grainv1"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.Grainv1$KeyGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/Grainv1Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method
