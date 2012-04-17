.class public Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CMPCertificate.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private x509v3PKCert:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
