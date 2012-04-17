.class public Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RecipientEncryptedKey.java"


# instance fields
.field private encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private identifier:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;


# direct methods
.method private constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 16
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->identifier:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 19
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0
    .parameter "id"
    .parameter "encryptedKey"

    .prologue
    .line 53
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 54
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->identifier:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    .line 55
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 56
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;
    .locals 3
    .parameter "obj"

    .prologue
    .line 41
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;

    .line 46
    .end local p0
    :goto_0
    return-object p0

    .line 45
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 46
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 49
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RecipientEncryptedKey: "

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
.method public getEncryptedKey()Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getIdentifier()Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->identifier:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 79
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->identifier:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 80
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 82
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
