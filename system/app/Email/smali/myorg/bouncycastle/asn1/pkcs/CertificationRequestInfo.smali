.class public Lmyorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CertificationRequestInfo.java"


# instance fields
.field attributes:Lmyorg/bouncycastle/asn1/ASN1Set;

.field subject:Lmyorg/bouncycastle/asn1/x509/X509Name;

.field subjectPKInfo:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field version:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 103
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lmyorg/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 104
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 106
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 110
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
