.class public Lmyorg/bouncycastle/asn1/cmp/RevAnnContent;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RevAnnContent.java"


# instance fields
.field private badSinceDate:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

.field private certId:Lmyorg/bouncycastle/asn1/crmf/CertId;

.field private crlDetails:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field private status:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

.field private willBeRevokedAt:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 80
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/RevAnnContent;->status:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 81
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/RevAnnContent;->certId:Lmyorg/bouncycastle/asn1/crmf/CertId;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 82
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 83
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 85
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/RevAnnContent;->crlDetails:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/RevAnnContent;->crlDetails:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 89
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
