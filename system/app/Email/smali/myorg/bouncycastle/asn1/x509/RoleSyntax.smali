.class public Lmyorg/bouncycastle/asn1/x509/RoleSyntax;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RoleSyntax.java"


# instance fields
.field private roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

.field private roleName:Lmyorg/bouncycastle/asn1/x509/GeneralName;


# virtual methods
.method public getRoleAuthorityAsString()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 155
    iget-object v4, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-nez v4, :cond_1

    .line 156
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    .line 169
    :cond_0
    return-object v2

    .line 159
    :cond_1
    iget-object v4, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 160
    .local v1, names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    array-length v4, v1

    new-array v2, v4, [Ljava/lang/String;

    .line 161
    .local v2, namesString:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 162
    aget-object v4, v1, v0

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    .line 163
    .local v3, value:Lmyorg/bouncycastle/asn1/DEREncodable;
    instance-of v4, v3, Lmyorg/bouncycastle/asn1/DERString;

    if-eqz v4, :cond_2

    .line 164
    check-cast v3, Lmyorg/bouncycastle/asn1/DERString;

    .end local v3           #value:Lmyorg/bouncycastle/asn1/DEREncodable;
    invoke-interface {v3}, Lmyorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 161
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .restart local v3       #value:Lmyorg/bouncycastle/asn1/DEREncodable;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    goto :goto_1
.end method

.method public getRoleNameAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERString;

    .line 145
    .local v0, str:Lmyorg/bouncycastle/asn1/DERString;
    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 185
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_0

    .line 186
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v3, v3, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 188
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 190
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->getRoleNameAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Auth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, buff:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    .line 196
    :cond_0
    const-string v3, "N/A"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 198
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->getRoleAuthorityAsString()[Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, names:[Ljava/lang/String;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 201
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    :cond_2
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
