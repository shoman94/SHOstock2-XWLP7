.class public Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "IDEACBCPar.java"


# instance fields
.field iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .parameter "seq"

    .prologue
    .line 23
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 24
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "iv"

    .prologue
    .line 19
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 20
    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 21
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 51
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 55
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
