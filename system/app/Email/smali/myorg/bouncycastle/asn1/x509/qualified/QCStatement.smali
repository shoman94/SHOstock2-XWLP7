.class public Lmyorg/bouncycastle/asn1/x509/qualified/QCStatement;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "QCStatement.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers;
.implements Lmyorg/bouncycastle/asn1/x509/qualified/RFC3739QCObjectIdentifiers;


# instance fields
.field qcStatementId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field qcStatementInfo:Lmyorg/bouncycastle/asn1/ASN1Encodable;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 71
    .local v0, seq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 73
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 77
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
