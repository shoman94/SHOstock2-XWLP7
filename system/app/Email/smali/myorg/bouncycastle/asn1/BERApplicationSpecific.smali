.class public Lmyorg/bouncycastle/asn1/BERApplicationSpecific;
.super Lmyorg/bouncycastle/asn1/DERApplicationSpecific;
.source "BERApplicationSpecific.java"


# direct methods
.method public constructor <init>(ILmyorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 0
    .parameter "tagNo"
    .parameter "vec"

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ILmyorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 7
    return-void
.end method
