.class public Lmyorg/bouncycastle/jce/exception/ExtCertificateEncodingException;
.super Ljava/security/cert/CertificateEncodingException;
.source "ExtCertificateEncodingException.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/exception/ExtException;


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p2, p0, Lmyorg/bouncycastle/jce/exception/ExtCertificateEncodingException;->cause:Ljava/lang/Throwable;

    .line 13
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmyorg/bouncycastle/jce/exception/ExtCertificateEncodingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
