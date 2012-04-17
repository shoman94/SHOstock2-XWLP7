.class public abstract Lmyorg/bouncycastle/asn1/ASN1Generator;
.super Ljava/lang/Object;
.source "ASN1Generator.java"


# instance fields
.field protected _out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    .line 11
    return-void
.end method
