.class public Lmyorg/bouncycastle/sasn1/DerSequence;
.super Lmyorg/bouncycastle/sasn1/DerObject;
.source "DerSequence.java"

# interfaces
.implements Lmyorg/bouncycastle/sasn1/Asn1Sequence;


# instance fields
.field private _aIn:Lmyorg/bouncycastle/sasn1/Asn1InputStream;


# direct methods
.method constructor <init>(I[B)V
    .locals 1
    .parameter "baseTag"
    .parameter "content"

    .prologue
    .line 13
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2}, Lmyorg/bouncycastle/sasn1/DerObject;-><init>(II[B)V

    .line 15
    new-instance v0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/sasn1/Asn1InputStream;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/sasn1/DerSequence;->_aIn:Lmyorg/bouncycastle/sasn1/Asn1InputStream;

    .line 16
    return-void
.end method
