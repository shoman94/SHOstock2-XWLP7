.class Lcom/android/email/SMIMEHelperUtils$FakeBodyPart;
.super Lcom/android/emailcommon/mail/BodyPart;
.source "SMIMEHelperUtils.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Body;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SMIMEHelperUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeBodyPart"
.end annotation


# instance fields
.field private mSmimeBodyPart:Ljavax/mail/BodyPart;

.field final synthetic this$0:Lcom/android/email/SMIMEHelperUtils;


# direct methods
.method public constructor <init>(Lcom/android/email/SMIMEHelperUtils;Ljavax/mail/BodyPart;)V
    .locals 0
    .parameter
    .parameter "smimePart"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/email/SMIMEHelperUtils$FakeBodyPart;->this$0:Lcom/android/email/SMIMEHelperUtils;

    invoke-direct {p0}, Lcom/android/emailcommon/mail/BodyPart;-><init>()V

    .line 557
    iput-object p2, p0, Lcom/android/email/SMIMEHelperUtils$FakeBodyPart;->mSmimeBodyPart:Ljavax/mail/BodyPart;

    .line 558
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 563
    return-void
.end method

.method public getBody()Lcom/android/emailcommon/mail/Body;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 566
    return-object p0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 571
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 591
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/android/email/SMIMEHelperUtils$FakeBodyPart;->mSmimeBodyPart:Ljavax/mail/BodyPart;

    invoke-virtual {v1}, Ljavax/mail/BodyPart;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 596
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public setBody(Lcom/android/emailcommon/mail/Body;)V
    .locals 0
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 617
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 627
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 652
    return-void
.end method

.method public writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V
    .locals 0
    .parameter "context"
    .parameter "messageId"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 646
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 632
    return-void
.end method
