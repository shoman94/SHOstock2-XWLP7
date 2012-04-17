.class public Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;
.super Ljava/security/cert/CertPathValidatorException;
.source "ExtCertPathValidatorException.java"

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
    .line 13
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .locals 0
    .parameter "msg"
    .parameter "cause"
    .parameter "certPath"
    .parameter "index"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .line 19
    iput-object p2, p0, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    .line 20
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
