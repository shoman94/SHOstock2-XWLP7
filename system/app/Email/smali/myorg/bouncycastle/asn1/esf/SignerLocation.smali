.class public Lmyorg/bouncycastle/asn1/esf/SignerLocation;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SignerLocation.java"


# instance fields
.field private countryName:Lmyorg/bouncycastle/asn1/DERUTF8String;

.field private localityName:Lmyorg/bouncycastle/asn1/DERUTF8String;

.field private postalAddress:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 119
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 121
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lmyorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lmyorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 125
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lmyorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lmyorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 129
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 130
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 133
    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
