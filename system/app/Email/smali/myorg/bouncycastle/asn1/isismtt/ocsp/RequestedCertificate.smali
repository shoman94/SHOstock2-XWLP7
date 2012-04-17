.class public Lmyorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RequestedCertificate.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private attributeCert:[B

.field private cert:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

.field private publicKeyCert:[B


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->publicKeyCert:[B

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    new-instance v2, Lmyorg/bouncycastle/asn1/DEROctetString;

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->publicKeyCert:[B

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 154
    :goto_0
    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->attributeCert:[B

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    new-instance v2, Lmyorg/bouncycastle/asn1/DEROctetString;

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->attributeCert:[B

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->cert:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    goto :goto_0
.end method
