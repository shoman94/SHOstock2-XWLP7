.class Lmyorg/bouncycastle/asn1/ASN1Sequence$1;
.super Ljava/lang/Object;
.source "ASN1Sequence.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1SequenceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmyorg/bouncycastle/asn1/ASN1Sequence;->parser()Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field private final max:I

.field final synthetic this$0:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field final synthetic val$outer:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;->this$0:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    iput-object p2, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;->val$outer:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;->this$0:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;->max:I

    return-void
.end method


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;->val$outer:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public readObject()Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget v1, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;->index:I

    iget v2, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;->max:I

    if-ne v1, v2, :cond_1

    .line 85
    const/4 v0, 0x0

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;->this$0:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    iget v2, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;->index:I

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 89
    .local v0, obj:Lmyorg/bouncycastle/asn1/DEREncodable;
    instance-of v1, v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 90
    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local v0           #obj:Lmyorg/bouncycastle/asn1/DEREncodable;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->parser()Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v0

    goto :goto_0

    .line 92
    .restart local v0       #obj:Lmyorg/bouncycastle/asn1/DEREncodable;
    :cond_2
    instance-of v1, v0, Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Set;

    .end local v0           #obj:Lmyorg/bouncycastle/asn1/DEREncodable;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Set;->parser()Lmyorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    goto :goto_0
.end method
