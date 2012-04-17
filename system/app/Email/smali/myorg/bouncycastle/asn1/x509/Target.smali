.class public Lmyorg/bouncycastle/asn1/x509/Target;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "Target.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private targGroup:Lmyorg/bouncycastle/asn1/x509/GeneralName;

.field private targName:Lmyorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method private constructor <init>(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3
    .parameter "tagObj"

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 59
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    invoke-static {p1, v1}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Target;->targName:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .line 69
    :goto_0
    return-void

    .line 64
    :pswitch_1
    invoke-static {p1, v1}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Target;->targGroup:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Target;
    .locals 3
    .parameter "obj"

    .prologue
    .line 43
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/Target;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/Target;

    .line 46
    .end local p0
    :goto_0
    return-object p0

    .line 45
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/Target;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/Target;-><init>(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

    goto :goto_0

    .line 49
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getTargetGroup()Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Target;->targGroup:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getTargetName()Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Target;->targName:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Target;->targName:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/Target;->targName:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v0, v3, v1, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 116
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/Target;->targGroup:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v0, v3, v3, v1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method
