.class public Lmyorg/bouncycastle/asn1/x509/ReasonFlags;
.super Lmyorg/bouncycastle/asn1/DERBitString;
.source "ReasonFlags.java"


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERBitString;)V
    .locals 2
    .parameter "reasons"

    .prologue
    .line 79
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 80
    return-void
.end method
