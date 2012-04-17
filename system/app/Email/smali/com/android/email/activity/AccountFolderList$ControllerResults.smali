.class Lcom/android/email/activity/AccountFolderList$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "AccountFolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountFolderList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/AccountFolderList;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderList$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountFolderList$ControllerResults;-><init>(Lcom/android/email/activity/AccountFolderList;)V

    return-void
.end method

.method private updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V
    .locals 2
    .parameter "result"
    .parameter "progress"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderList;

    if-nez p1, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/email/activity/AccountFolderList;->showProgressIcon(Z)V
    invoke-static {v1, v0}, Lcom/android/email/activity/AccountFolderList;->access$300(Lcom/android/email/activity/AccountFolderList;Z)V

    .line 311
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 307
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 301
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/AccountFolderList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 302
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 0
    .parameter "result"
    .parameter "accountKey"
    .parameter "mailboxKey"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 295
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/AccountFolderList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 296
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountKey"
    .parameter "progress"

    .prologue
    .line 289
    invoke-direct {p0, p1, p4}, Lcom/android/email/activity/AccountFolderList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 290
    return-void
.end method
