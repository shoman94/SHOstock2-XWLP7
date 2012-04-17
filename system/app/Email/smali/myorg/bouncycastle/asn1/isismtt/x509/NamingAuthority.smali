.class public Lmyorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "NamingAuthority.java"


# static fields
.field public static final id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field private namingAuthorityId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private namingAuthorityText:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

.field private namingAuthorityUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_namingAuthorities:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 178
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 179
    .local v0, vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 182
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 183
    new-instance v1, Lmyorg/bouncycastle/asn1/DERIA5String;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityUrl:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 185
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityText:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_2

    .line 186
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityText:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 188
    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
