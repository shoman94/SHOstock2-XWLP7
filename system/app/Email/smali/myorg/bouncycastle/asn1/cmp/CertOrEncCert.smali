.class public Lmyorg/bouncycastle/asn1/cmp/CertOrEncCert;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CertOrEncCert.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private certificate:Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private encryptedCert:Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 56
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cmp/CertOrEncCert;->certificate:Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/CertOrEncCert;->certificate:Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-direct {v0, v3, v1, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-direct {v0, v3, v3, v1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method
