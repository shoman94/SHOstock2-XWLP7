.class public final Lgnu/mail/handler/MessageRFC822;
.super Lgnu/mail/handler/Message;
.source "MessageRFC822.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "message/rfc822"

    const-string v1, "message"

    invoke-direct {p0, v0, v1}, Lgnu/mail/handler/Message;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
