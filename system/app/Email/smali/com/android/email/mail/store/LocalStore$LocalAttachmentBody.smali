.class public Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Body;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalAttachmentBody"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 1788
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1789
    iput-object p2, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;->mContext:Landroid/content/Context;

    .line 1790
    iput-object p1, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;->mUri:Landroid/net/Uri;

    .line 1791
    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1795
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1802
    :goto_0
    return-object v2

    .line 1796
    :catch_0
    move-exception v0

    .line 1802
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 1803
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1804
    .local v1, ioe:Ljava/io/IOException;
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Invalid attachment."

    invoke-direct {v2, v3, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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
    .line 1823
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1809
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1810
    .local v1, in:Ljava/io/InputStream;
    new-instance v0, Landroid/util/Base64OutputStream;

    const/16 v2, 0x14

    invoke-direct {v0, p1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1812
    .local v0, base64Out:Landroid/util/Base64OutputStream;
    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 1813
    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V

    .line 1814
    return-void
.end method
