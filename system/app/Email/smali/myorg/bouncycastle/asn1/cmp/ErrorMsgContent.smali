.class public Lmyorg/bouncycastle/asn1/cmp/ErrorMsgContent;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ErrorMsgContent.java"


# instance fields
.field private errorCode:Lmyorg/bouncycastle/asn1/DERInteger;

.field private errorDetails:Lmyorg/bouncycastle/asn1/cmp/PKIFreeText;

.field private pKIStatusInfo:Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;


# direct methods
.method private addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .parameter "v"
    .parameter "obj"

    .prologue
    .line 82
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1, p2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 74
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/ErrorMsgContent;->pKIStatusInfo:Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 75
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/ErrorMsgContent;->errorCode:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/asn1/cmp/ErrorMsgContent;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 76
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/ErrorMsgContent;->errorDetails:Lmyorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/asn1/cmp/ErrorMsgContent;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 78
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
