.class public Lmyorg/bouncycastle/sasn1/Asn1Null;
.super Lmyorg/bouncycastle/sasn1/Asn1Object;
.source "Asn1Null.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .parameter "baseTag"

    .prologue
    .line 9
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmyorg/bouncycastle/sasn1/Asn1Object;-><init>(IILjava/io/InputStream;)V

    .line 10
    return-void
.end method
