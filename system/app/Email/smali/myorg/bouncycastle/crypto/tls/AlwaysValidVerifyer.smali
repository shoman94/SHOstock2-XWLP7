.class public Lmyorg/bouncycastle/crypto/tls/AlwaysValidVerifyer;
.super Ljava/lang/Object;
.source "AlwaysValidVerifyer.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/tls/CertificateVerifyer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;)Z
    .locals 1
    .parameter "certs"

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
