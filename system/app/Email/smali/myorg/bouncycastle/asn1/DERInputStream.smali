.class public Lmyorg/bouncycastle/asn1/DERInputStream;
.super Ljava/io/FilterInputStream;
.source "DERInputStream.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERTags;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 22
    return-void
.end method
