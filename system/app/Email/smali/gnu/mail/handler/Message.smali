.class public abstract Lgnu/mail/handler/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field protected flavor:Lmyjava/awt/datatransfer/DataFlavor;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Ljavax/mail/Message;

    invoke-direct {v0, v1, p1, p2}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/mail/handler/Message;->flavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 69
    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 111
    .line 112
    :try_start_0
    instance-of v1, p1, Ljavax/mail/MessageAware;

    if-eqz v1, :cond_0

    .line 114
    move-object v0, p1

    check-cast v0, Ljavax/mail/MessageAware;

    move-object v1, v0

    .line 115
    invoke-interface {v1}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljavax/mail/MessageContext;->getSession()Ljavax/mail/Session;

    move-result-object v1

    move-object v3, v1

    .line 124
    :goto_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 125
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v1, v3, v4}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V

    .line 135
    :goto_1
    return-object v1

    .line 120
    :cond_0
    const/4 v1, 0x0

    .line 122
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 129
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->printStackTrace()V

    :goto_2
    move-object v1, v2

    .line 135
    goto :goto_1

    .line 131
    :catch_1
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    instance-of v0, p1, Ljavax/mail/Message;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    check-cast p1, Ljavax/mail/Message;

    invoke-virtual {p1, p3}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 157
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_0
    new-instance v0, Ljavax/activation/UnsupportedDataTypeException;

    invoke-direct {v0}, Ljavax/activation/UnsupportedDataTypeException;-><init>()V

    throw v0
.end method
