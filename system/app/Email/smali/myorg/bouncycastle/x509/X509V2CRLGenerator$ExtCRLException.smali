.class Lmyorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;
.super Ljava/security/cert/CRLException;
.source "X509V2CRLGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/x509/X509V2CRLGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtCRLException"
.end annotation


# instance fields
.field cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .line 355
    iput-object p2, p0, Lmyorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;->cause:Ljava/lang/Throwable;

    .line 356
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
