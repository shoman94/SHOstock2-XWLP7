.class Lmyorg/bouncycastle/asn1/BERFactory;
.super Ljava/lang/Object;
.source "BERFactory.java"


# static fields
.field static final EMPTY_SEQUENCE:Lmyorg/bouncycastle/asn1/BERSequence;

.field static final EMPTY_SET:Lmyorg/bouncycastle/asn1/BERSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/BERFactory;->EMPTY_SEQUENCE:Lmyorg/bouncycastle/asn1/BERSequence;

    .line 6
    new-instance v0, Lmyorg/bouncycastle/asn1/BERSet;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/BERSet;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/BERFactory;->EMPTY_SET:Lmyorg/bouncycastle/asn1/BERSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createSequence(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;)Lmyorg/bouncycastle/asn1/BERSequence;
    .locals 2
    .parameter "v"

    .prologue
    .line 9
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lmyorg/bouncycastle/asn1/BERFactory;->EMPTY_SEQUENCE:Lmyorg/bouncycastle/asn1/BERSequence;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    goto :goto_0
.end method
