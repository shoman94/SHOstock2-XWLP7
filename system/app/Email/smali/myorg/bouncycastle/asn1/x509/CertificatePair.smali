.class public Lmyorg/bouncycastle/asn1/x509/CertificatePair;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CertificatePair.java"


# instance fields
.field private forward:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

.field private reverse:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 125
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 127
    .local v0, vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/CertificatePair;->forward:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/CertificatePair;->forward:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 130
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/CertificatePair;->reverse:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    if-eqz v1, :cond_1

    .line 131
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/CertificatePair;->reverse:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 134
    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
