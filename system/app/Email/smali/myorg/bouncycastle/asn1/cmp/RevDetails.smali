.class public Lmyorg/bouncycastle/asn1/cmp/RevDetails;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RevDetails.java"


# instance fields
.field private certDetails:Lmyorg/bouncycastle/asn1/crmf/CertTemplate;

.field private crlEntryDetails:Lmyorg/bouncycastle/asn1/x509/X509Extensions;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 60
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/RevDetails;->certDetails:Lmyorg/bouncycastle/asn1/crmf/CertTemplate;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 62
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 66
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
