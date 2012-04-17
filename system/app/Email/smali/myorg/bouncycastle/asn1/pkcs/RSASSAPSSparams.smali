.class public Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RSASSAPSSparams.java"


# static fields
.field public static final DEFAULT_HASH_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final DEFAULT_MASK_GEN_FUNCTION:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final DEFAULT_SALT_LENGTH:Lmyorg/bouncycastle/asn1/DERInteger;

.field public static final DEFAULT_TRAILER_FIELD:Lmyorg/bouncycastle/asn1/DERInteger;


# instance fields
.field private hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private saltLength:Lmyorg/bouncycastle/asn1/DERInteger;

.field private trailerField:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v2, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v2}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 24
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    sput-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 27
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    sput-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lmyorg/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 43
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 44
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 45
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 46
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 47
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .parameter "seq"

    .prologue
    const/4 v3, 0x1

    .line 57
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 58
    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 59
    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 60
    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 61
    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 63
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 64
    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 66
    .local v1, o:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :pswitch_0
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 63
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    .line 74
    :pswitch_2
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_1

    .line 77
    :pswitch_3
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_1

    .line 83
    .end local v1           #o:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DERInteger;Lmyorg/bouncycastle/asn1/DERInteger;)V
    .locals 0
    .parameter "hashAlgorithm"
    .parameter "maskGenAlgorithm"
    .parameter "saltLength"
    .parameter "trailerField"

    .prologue
    .line 50
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 51
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 52
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 53
    iput-object p3, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 54
    iput-object p4, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 55
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 3
    .parameter "obj"

    .prologue
    .line 30
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    .line 33
    .end local p0
    :goto_0
    return-object p0

    .line 32
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 33
    new-instance v0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 36
    .restart local p0
    :cond_2
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
.method public getHashAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getMaskGenAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSaltLength()Lmyorg/bouncycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lmyorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getTrailerField()Lmyorg/bouncycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lmyorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 129
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 131
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 139
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lmyorg/bouncycastle/asn1/DERInteger;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 143
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lmyorg/bouncycastle/asn1/DERInteger;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 144
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x3

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 147
    :cond_3
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
