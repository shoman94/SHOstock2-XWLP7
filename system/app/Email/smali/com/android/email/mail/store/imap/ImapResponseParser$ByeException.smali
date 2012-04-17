.class public Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;
.super Ljava/io/IOException;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/imap/ImapResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByeException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "Received BYE"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method
