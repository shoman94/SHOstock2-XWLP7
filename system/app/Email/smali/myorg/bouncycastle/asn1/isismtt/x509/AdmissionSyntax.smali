.class public Lmyorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "AdmissionSyntax.java"


# instance fields
.field private admissionAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralName;

.field private contentsOfAdmissions:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 245
    .local v0, vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->admissionAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->admissionAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 248
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/AdmissionSyntax;->contentsOfAdmissions:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 249
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
