.class public Lmyorg/bouncycastle/asn1/x509/GeneralName;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "GeneralName.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field obj:Lmyorg/bouncycastle/asn1/DEREncodable;

.field tag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "name"

    .prologue
    .line 123
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 124
    iput p1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 126
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 127
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v1, p2}, Lmyorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 142
    :goto_0
    return-void

    .line 128
    :cond_1
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 129
    new-instance v1, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    goto :goto_0

    .line 130
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 131
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/X509Name;

    invoke-direct {v1, p2}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    goto :goto_0

    .line 132
    :cond_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_5

    .line 133
    invoke-direct {p0, p2}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->toGeneralNameEncoding(Ljava/lang/String;)[B

    move-result-object v0

    .line 134
    .local v0, enc:[B
    if-eqz v0, :cond_4

    .line 135
    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    goto :goto_0

    .line 137
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IP Address is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    .end local v0           #enc:[B
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t process String for tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .parameter "tag"
    .parameter "name"

    .prologue
    .line 94
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 95
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 96
    iput p1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 97
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .parameter "dirName"

    .prologue
    .line 59
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 60
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 62
    return-void
.end method

.method private copyInts([I[BI)V
    .locals 3
    .parameter "parsedIp"
    .parameter "addr"
    .parameter "offSet"

    .prologue
    .line 291
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 292
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    aget v2, p1, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 293
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    aget v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 145
    if-eqz p0, :cond_0

    instance-of v2, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v2, :cond_1

    .line 146
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .line 171
    .end local p0
    .local v0, tag:I
    .local v1, tagObj:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_0
    return-object p0

    .line 149
    .end local v0           #tag:I
    .end local v1           #tagObj:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    .restart local p0
    :cond_1
    instance-of v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_2

    move-object v1, p0

    .line 150
    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 151
    .restart local v1       #tagObj:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    .line 153
    .restart local v0       #tag:I
    packed-switch v0, :pswitch_data_0

    .line 175
    .end local v0           #tag:I
    .end local v1           #tagObj:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown object in getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .restart local v0       #tag:I
    .restart local v1       #tagObj:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_0
    new-instance p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .end local p0
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 157
    .restart local p0
    :pswitch_1
    new-instance p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .end local p0
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/DERIA5String;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERIA5String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 159
    .restart local p0
    :pswitch_2
    new-instance p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .end local p0
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/DERIA5String;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERIA5String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 161
    .restart local p0
    :pswitch_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :pswitch_4
    new-instance p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .end local p0
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 165
    .restart local p0
    :pswitch_5
    new-instance p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .end local p0
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 167
    .restart local p0
    :pswitch_6
    new-instance p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .end local p0
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/DERIA5String;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERIA5String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    goto/16 :goto_0

    .line 169
    .restart local p0
    :pswitch_7
    new-instance p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .end local p0
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    goto/16 :goto_0

    .line 171
    .restart local p0
    :pswitch_8
    new-instance p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .end local p0
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    goto/16 :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1
    .parameter "tagObj"
    .parameter "explicit"

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method private parseIPv4(Ljava/lang/String;[BI)V
    .locals 5
    .parameter "ip"
    .parameter "addr"
    .parameter "offset"

    .prologue
    .line 272
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "./"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .local v2, sTok:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 275
    .local v0, index:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    add-int v3, p3, v0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method

.method private parseIPv4Mask(Ljava/lang/String;[BI)V
    .locals 6
    .parameter "mask"
    .parameter "addr"
    .parameter "offset"

    .prologue
    .line 264
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 266
    .local v1, maskVal:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 267
    div-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p3

    aget-byte v3, p2, v2

    const/4 v4, 0x1

    rem-int/lit8 v5, v0, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method private parseIPv6(Ljava/lang/String;)[I
    .locals 12
    .parameter "ip"

    .prologue
    const/16 v11, 0x3a

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 298
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v8, ":"

    invoke-direct {v6, p1, v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 299
    .local v6, sTok:Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    .line 300
    .local v4, index:I
    const/16 v8, 0x8

    new-array v7, v8, [I

    .line 302
    .local v7, val:[I
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_0

    .line 303
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 306
    :cond_0
    const/4 v0, -0x1

    .line 308
    .local v0, doubleColon:I
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 309
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, e:Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 312
    move v0, v4

    .line 313
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aput v10, v7, v4

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 315
    :cond_1
    const/16 v8, 0x2e

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_2

    .line 316
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    const/16 v8, 0x10

    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v7, v4

    .line 317
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 318
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 321
    :cond_2
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v8, "."

    invoke-direct {v2, v1, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .local v2, eTok:Ljava/util/StringTokenizer;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    or-int/2addr v8, v9

    aput v8, v7, v4

    .line 325
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    or-int/2addr v8, v9

    aput v8, v7, v5

    goto :goto_0

    .line 331
    .end local v1           #e:Ljava/lang/String;
    .end local v2           #eTok:Ljava/util/StringTokenizer;
    :cond_3
    array-length v8, v7

    if-eq v4, v8, :cond_4

    .line 332
    array-length v8, v7

    sub-int v9, v4, v0

    sub-int/2addr v8, v9

    sub-int v9, v4, v0

    invoke-static {v7, v0, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    move v3, v0

    .local v3, i:I
    :goto_1
    array-length v8, v7

    sub-int v9, v4, v0

    sub-int/2addr v8, v9

    if-eq v3, v8, :cond_4

    .line 335
    aput v10, v7, v3

    .line 334
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 339
    .end local v3           #i:I
    :cond_4
    return-object v7

    .end local v4           #index:I
    .restart local v1       #e:Ljava/lang/String;
    .restart local v5       #index:I
    :cond_5
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto/16 :goto_0
.end method

.method private parseMask(Ljava/lang/String;)[I
    .locals 7
    .parameter "mask"

    .prologue
    .line 281
    const/16 v3, 0x8

    new-array v2, v3, [I

    .line 282
    .local v2, res:[I
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 284
    .local v1, maskVal:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 285
    div-int/lit8 v3, v0, 0x10

    aget v4, v2, v3

    const/4 v5, 0x1

    rem-int/lit8 v6, v0, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-object v2
.end method

.method private toGeneralNameEncoding(Ljava/lang/String;)[B
    .locals 9
    .parameter "ip"

    .prologue
    const/16 v8, 0x2f

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 212
    invoke-static {p1}, Lmyorg/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lmyorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    :cond_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 215
    .local v3, slashIndex:I
    if-gez v3, :cond_1

    .line 216
    new-array v0, v7, [B

    .line 217
    .local v0, addr:[B
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    move-result-object v2

    .line 218
    .local v2, parsedIp:[I
    invoke-direct {p0, v2, v0, v5}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    .line 260
    .end local v0           #addr:[B
    .end local v2           #parsedIp:[I
    .end local v3           #slashIndex:I
    :goto_0
    return-object v0

    .line 222
    .restart local v3       #slashIndex:I
    :cond_1
    const/16 v4, 0x20

    new-array v0, v4, [B

    .line 223
    .restart local v0       #addr:[B
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    move-result-object v2

    .line 224
    .restart local v2       #parsedIp:[I
    invoke-direct {p0, v2, v0, v5}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    .line 225
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, mask:Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 227
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    move-result-object v2

    .line 231
    :goto_1
    invoke-direct {p0, v2, v0, v7}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->parseMask(Ljava/lang/String;)[I

    move-result-object v2

    goto :goto_1

    .line 235
    .end local v0           #addr:[B
    .end local v1           #mask:Ljava/lang/String;
    .end local v2           #parsedIp:[I
    .end local v3           #slashIndex:I
    :cond_3
    invoke-static {p1}, Lmyorg/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p1}, Lmyorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 236
    :cond_4
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 238
    .restart local v3       #slashIndex:I
    if-gez v3, :cond_5

    .line 239
    new-array v0, v6, [B

    .line 241
    .restart local v0       #addr:[B
    invoke-direct {p0, p1, v0, v5}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    goto :goto_0

    .line 245
    .end local v0           #addr:[B
    :cond_5
    const/16 v4, 0x8

    new-array v0, v4, [B

    .line 247
    .restart local v0       #addr:[B
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0, v5}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    .line 249
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    .restart local v1       #mask:Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_6

    .line 251
    invoke-direct {p0, v1, v0, v6}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    goto :goto_0

    .line 253
    :cond_6
    invoke-direct {p0, v1, v0, v6}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->parseIPv4Mask(Ljava/lang/String;[BI)V

    goto :goto_0

    .line 260
    .end local v0           #addr:[B
    .end local v1           #mask:Ljava/lang/String;
    .end local v3           #slashIndex:I
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getTagNo()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    return v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 343
    iget v0, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 346
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    iget v2, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 348
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v0, buf:Ljava/lang/StringBuffer;
    iget v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 195
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    iget v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 206
    :pswitch_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 200
    :pswitch_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERIA5String;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralName;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
