.class public Lmyorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CAKeyUpdAnnContent.java"


# instance fields
.field private newWithNew:Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private newWithOld:Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private oldWithNew:Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 59
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->oldWithNew:Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 60
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->newWithOld:Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 61
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->newWithNew:Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 63
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
