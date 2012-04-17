.class public Lmyorg/bouncycastle/asn1/ocsp/ResponderID;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ResponderID.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private value:Lmyorg/bouncycastle/asn1/DEREncodable;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 57
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x2

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v3, v1, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 61
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v3, v3, v1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method
