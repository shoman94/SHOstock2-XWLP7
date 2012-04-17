.class public Lmyorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ProcurationSyntax.java"


# instance fields
.field private certRef:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

.field private country:Ljava/lang/String;

.field private thirdPerson:Lmyorg/bouncycastle/asn1/x509/GeneralName;

.field private typeOfSubstitution:Lmyorg/bouncycastle/asn1/x500/DirectoryString;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 199
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 200
    .local v0, vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 201
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lmyorg/bouncycastle/asn1/DERPrintableString;

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 203
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_1

    .line 204
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 206
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_2

    .line 207
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v5, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 212
    :goto_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1

    .line 209
    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v5, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method
