.class Lmyorg/bouncycastle/asn1/ASN1Set$1;
.super Ljava/lang/Object;
.source "ASN1Set.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1SetParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmyorg/bouncycastle/asn1/ASN1Set;->parser()Lmyorg/bouncycastle/asn1/ASN1SetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field private final max:I

.field final synthetic this$0:Lmyorg/bouncycastle/asn1/ASN1Set;

.field final synthetic val$outer:Lmyorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/ASN1Set;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/ASN1Set$1;->this$0:Lmyorg/bouncycastle/asn1/ASN1Set;

    iput-object p2, p0, Lmyorg/bouncycastle/asn1/ASN1Set$1;->val$outer:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set$1;->this$0:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set$1;->max:I

    return-void
.end method


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set$1;->val$outer:Lmyorg/bouncycastle/asn1/ASN1Set;

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
    .line 124
    iget v1, p0, Lmyorg/bouncycastle/asn1/ASN1Set$1;->index:I

    iget v2, p0, Lmyorg/bouncycastle/asn1/ASN1Set$1;->max:I

    if-ne v1, v2, :cond_1

    .line 125
    const/4 v0, 0x0

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ASN1Set$1;->this$0:Lmyorg/bouncycastle/asn1/ASN1Set;

    iget v2, p0, Lmyorg/bouncycastle/asn1/ASN1Set$1;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmyorg/bouncycastle/asn1/ASN1Set$1;->index:I

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 129
    .local v0, obj:Lmyorg/bouncycastle/asn1/DEREncodable;
    instance-of v1, v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 130
    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local v0           #obj:Lmyorg/bouncycastle/asn1/DEREncodable;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->parser()Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v0

    goto :goto_0

    .line 132
    .restart local v0       #obj:Lmyorg/bouncycastle/asn1/DEREncodable;
    :cond_2
    instance-of v1, v0, Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 133
    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Set;

    .end local v0           #obj:Lmyorg/bouncycastle/asn1/DEREncodable;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Set;->parser()Lmyorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    goto :goto_0
.end method
