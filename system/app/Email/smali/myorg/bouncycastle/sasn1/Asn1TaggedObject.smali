.class public Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;
.super Lmyorg/bouncycastle/sasn1/Asn1Object;
.source "Asn1TaggedObject.java"


# direct methods
.method protected constructor <init>(IILjava/io/InputStream;)V
    .locals 0
    .parameter "baseTag"
    .parameter "tagNumber"
    .parameter "contentStream"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lmyorg/bouncycastle/sasn1/Asn1Object;-><init>(IILjava/io/InputStream;)V

    .line 13
    return-void
.end method
