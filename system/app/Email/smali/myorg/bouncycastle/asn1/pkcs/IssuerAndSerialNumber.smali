.class public Lmyorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "IssuerAndSerialNumber.java"


# instance fields
.field certSerialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

.field name:Lmyorg/bouncycastle/asn1/x509/X509Name;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 54
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lmyorg/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 55
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 57
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
