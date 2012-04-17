.class public Lmyorg/bouncycastle/asn1/BERNull;
.super Lmyorg/bouncycastle/asn1/DERNull;
.source "BERNull.java"


# static fields
.field public static final INSTANCE:Lmyorg/bouncycastle/asn1/BERNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lmyorg/bouncycastle/asn1/BERNull;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/BERNull;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/BERNull;->INSTANCE:Lmyorg/bouncycastle/asn1/BERNull;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    instance-of v0, p1, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    if-nez v0, :cond_0

    instance-of v0, p1, Lmyorg/bouncycastle/asn1/BEROutputStream;

    if-eqz v0, :cond_1

    .line 17
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-super {p0, p1}, Lmyorg/bouncycastle/asn1/DERNull;->encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_0
.end method
