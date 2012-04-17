.class public Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "AttCertIssuer.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field choiceObj:Lmyorg/bouncycastle/asn1/DERObject;

.field obj:Lmyorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1
    .parameter "names"

    .prologue
    .line 41
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 42
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    .line 43
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lmyorg/bouncycastle/asn1/DERObject;

    .line 44
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/V2Form;)V
    .locals 3
    .parameter "v2Form"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 47
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    .line 48
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v2, v2, v1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lmyorg/bouncycastle/asn1/DERObject;

    .line 49
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;
    .locals 3
    .parameter "obj"

    .prologue
    .line 16
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

    if-eqz v0, :cond_0

    .line 17
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

    .line 25
    .end local p0
    :goto_0
    return-object p0

    .line 18
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-static {p0}, Lmyorg/bouncycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/V2Form;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lmyorg/bouncycastle/asn1/x509/V2Form;)V

    move-object p0, v0

    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_2

    .line 21
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

    check-cast p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lmyorg/bouncycastle/asn1/x509/GeneralNames;)V

    move-object p0, v0

    goto :goto_0

    .line 22
    .restart local p0
    :cond_2
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3

    .line 23
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmyorg/bouncycastle/asn1/x509/V2Form;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/V2Form;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lmyorg/bouncycastle/asn1/x509/V2Form;)V

    move-object p0, v0

    goto :goto_0

    .line 24
    .restart local p0
    :cond_3
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_4

    .line 25
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-static {p0}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lmyorg/bouncycastle/asn1/x509/GeneralNames;)V

    move-object p0, v0

    goto :goto_0

    .line 28
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getIssuer()Lmyorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lmyorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method
