.class public Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;
.super Ljava/lang/Object;
.source "DefaultSignedAttributeTableGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;


# instance fields
.field private final table:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    .line 27
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V
    .locals 1
    .parameter "attributeTable"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->toHashtable()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    goto :goto_0
.end method


# virtual methods
.method protected createStandardAttributeTable(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 8
    .parameter "parameters"

    .prologue
    .line 53
    iget-object v5, p0, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    .line 55
    .local v4, std:Ljava/util/Hashtable;
    sget-object v5, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    const-string v5, "contentType"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 58
    .local v1, contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/Attribute;

    sget-object v5, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v1}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v0, v5, v6}, Lmyorg/bouncycastle/asn1/cms/Attribute;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    .line 59
    .local v0, attr:Lmyorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getAttrType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v0           #attr:Lmyorg/bouncycastle/asn1/cms/Attribute;
    .end local v1           #contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_0
    sget-object v5, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 63
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 64
    .local v3, signingTime:Ljava/util/Date;
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/Attribute;

    sget-object v5, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/DERSet;

    new-instance v7, Lmyorg/bouncycastle/asn1/cms/Time;

    invoke-direct {v7, v3}, Lmyorg/bouncycastle/asn1/cms/Time;-><init>(Ljava/util/Date;)V

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v0, v5, v6}, Lmyorg/bouncycastle/asn1/cms/Attribute;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    .line 66
    .restart local v0       #attr:Lmyorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getAttrType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v0           #attr:Lmyorg/bouncycastle/asn1/cms/Attribute;
    .end local v3           #signingTime:Ljava/util/Date;
    :cond_1
    sget-object v5, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 70
    const-string v5, "digest"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 71
    .local v2, messageDigest:[B
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/Attribute;

    sget-object v5, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/DERSet;

    new-instance v7, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v7, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v0, v5, v6}, Lmyorg/bouncycastle/asn1/cms/Attribute;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    .line 73
    .restart local v0       #attr:Lmyorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getAttrType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v0           #attr:Lmyorg/bouncycastle/asn1/cms/Attribute;
    .end local v2           #messageDigest:[B
    :cond_2
    return-object v4
.end method

.method public getAttributes(Ljava/util/Map;)Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2
    .parameter "parameters"

    .prologue
    .line 84
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->createStandardAttributeTable(Ljava/util/Map;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Ljava/util/Hashtable;)V

    return-object v0
.end method
