.class public Lmyorg/bouncycastle/sasn1/BerOctetString;
.super Lmyorg/bouncycastle/sasn1/Asn1Object;
.source "BerOctetString.java"

# interfaces
.implements Lmyorg/bouncycastle/sasn1/Asn1OctetString;


# direct methods
.method protected constructor <init>(ILjava/io/InputStream;)V
    .locals 1
    .parameter "baseTag"
    .parameter "contentStream"

    .prologue
    .line 11
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lmyorg/bouncycastle/sasn1/Asn1Object;-><init>(IILjava/io/InputStream;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getOctetStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lmyorg/bouncycastle/sasn1/BerOctetString;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;

    invoke-virtual {p0}, Lmyorg/bouncycastle/sasn1/BerOctetString;->getRawContentStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;-><init>(Ljava/io/InputStream;)V

    .line 18
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/sasn1/BerOctetString;->getRawContentStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method
