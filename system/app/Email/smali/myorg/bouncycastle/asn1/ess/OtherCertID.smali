.class public Lmyorg/bouncycastle/asn1/ess/OtherCertID;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "OtherCertID.java"


# instance fields
.field private issuerSerial:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

.field private otherCertHash:Lmyorg/bouncycastle/asn1/ASN1Encodable;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 99
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ess/OtherCertID;->otherCertHash:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 101
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ess/OtherCertID;->issuerSerial:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ess/OtherCertID;->issuerSerial:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 105
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
