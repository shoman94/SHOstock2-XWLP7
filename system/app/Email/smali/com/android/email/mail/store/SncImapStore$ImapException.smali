.class Lcom/android/email/mail/store/SncImapStore$ImapException;
.super Lcom/android/emailcommon/mail/MessagingException;
.source "SncImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/SncImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mAlertText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "alertText"

    .prologue
    .line 2751
    invoke-direct {p0, p1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 2752
    iput-object p2, p0, Lcom/android/email/mail/store/SncImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 2753
    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2756
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapException;->mAlertText:Ljava/lang/String;

    return-object v0
.end method
