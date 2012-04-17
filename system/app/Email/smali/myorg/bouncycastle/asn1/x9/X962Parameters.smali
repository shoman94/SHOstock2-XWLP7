.class public Lmyorg/bouncycastle/asn1/x9/X962Parameters;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "X962Parameters.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private params:Lmyorg/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 38
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->params:Lmyorg/bouncycastle/asn1/DERObject;

    .line 39
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->params:Lmyorg/bouncycastle/asn1/DERObject;

    .line 40
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 1
    .parameter "namedCurve"

    .prologue
    .line 34
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->params:Lmyorg/bouncycastle/asn1/DERObject;

    .line 35
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->params:Lmyorg/bouncycastle/asn1/DERObject;

    .line 36
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x9/X9ECParameters;)V
    .locals 1
    .parameter "ecParameters"

    .prologue
    .line 30
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->params:Lmyorg/bouncycastle/asn1/DERObject;

    .line 31
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->params:Lmyorg/bouncycastle/asn1/DERObject;

    .line 32
    return-void
.end method


# virtual methods
.method public getParameters()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->params:Lmyorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public isImplicitlyCA()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->params:Lmyorg/bouncycastle/asn1/DERObject;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1Null;

    return v0
.end method

.method public isNamedCurve()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->params:Lmyorg/bouncycastle/asn1/DERObject;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->params:Lmyorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method
