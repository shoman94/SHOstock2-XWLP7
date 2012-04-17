.class Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$WrappingIOException;
.super Ljava/io/IOException;
.source "SMIMEEnvelopedGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappingIOException"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 358
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 360
    iput-object p2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$WrappingIOException;->cause:Ljava/lang/Throwable;

    .line 361
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$WrappingIOException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
