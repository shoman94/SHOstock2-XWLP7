.class Lgnu/mail/util/MailboxURLConnection$MessageWriter;
.super Ljava/lang/Object;
.source "MailboxURLConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/mail/util/MailboxURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageWriter"
.end annotation


# instance fields
.field message:Ljavax/mail/Message;

.field out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljavax/mail/Message;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lgnu/mail/util/MailboxURLConnection$MessageWriter;->message:Ljavax/mail/Message;

    .line 258
    iput-object p2, p0, Lgnu/mail/util/MailboxURLConnection$MessageWriter;->out:Ljava/io/OutputStream;

    .line 259
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection$MessageWriter;->message:Ljavax/mail/Message;

    instance-of v0, v0, Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection$MessageWriter;->message:Ljavax/mail/Message;

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    iget-object v1, p0, Lgnu/mail/util/MailboxURLConnection$MessageWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method
