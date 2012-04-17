.class public Lmyorg/bouncycastle/asn1/cmp/PKIMessage;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PKIMessage.java"


# instance fields
.field private body:Lmyorg/bouncycastle/asn1/cmp/PKIBody;

.field private extraCerts:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field private header:Lmyorg/bouncycastle/asn1/cmp/PKIHeader;

.field private protection:Lmyorg/bouncycastle/asn1/DERBitString;


# direct methods
.method private addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .parameter "v"
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    .line 84
    if-eqz p3, :cond_0

    .line 85
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 74
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PKIMessage;->header:Lmyorg/bouncycastle/asn1/cmp/PKIHeader;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 75
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PKIMessage;->body:Lmyorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 77
    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/PKIMessage;->protection:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/PKIMessage;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 78
    const/4 v1, 0x1

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/PKIMessage;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
