.class public abstract Lcom/android/email/Controller$Result;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Result"
.end annotation


# instance fields
.field private volatile mRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4312
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 4330
    return-void
.end method

.method public addUserAccountCallback(Landroid/os/Bundle;J)V
    .locals 1
    .parameter "bundle"
    .parameter "accountId"

    .prologue
    .line 4547
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/Email;->SNC_RESTORE_ACCOUNT_FLOW_UNDERPROCESS:Z

    .line 4549
    return-void
.end method

.method public deactivateSncCallback()V
    .locals 0

    .prologue
    .line 4575
    return-void
.end method

.method public deleteAccountCallback(Landroid/os/Bundle;J)V
    .locals 0
    .parameter "status"
    .parameter "accountId"

    .prologue
    .line 4449
    return-void
.end method

.method public deleteAccountFromWebCallback(JLjava/lang/String;)V
    .locals 0
    .parameter "accountId"
    .parameter "emailId"

    .prologue
    .line 4569
    return-void
.end method

.method public deviceInfoCallback(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 4513
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 4455
    return-void
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 4467
    return-void
.end method

.method public folderPushCallback(Lcom/android/emailcommon/mail/MessagingException;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V
    .locals 0
    .parameter "result"
    .parameter "mailbox"
    .parameter "progress"

    .prologue
    .line 4562
    return-void
.end method

.method public getAvailableAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4522
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    return-void
.end method

.method public getUserConfiguredAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4528
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    return-void
.end method

.method public getUserProfileCallback(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 0
    .parameter "status"
    .parameter "sncProfile"

    .prologue
    .line 4534
    return-void
.end method

.method protected final isRegistered()Z
    .locals 1

    .prologue
    .line 4333
    iget-boolean v0, p0, Lcom/android/email/Controller$Result;->mRegistered:Z

    return v0
.end method

.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 4402
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 4380
    return-void
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 4502
    return-void
.end method

.method public modifyUserAccountCallback(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 4555
    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V
    .locals 0
    .parameter "result"
    .parameter "convId"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 4460
    return-void
.end method

.method public refreshIRMTemplatesCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 4386
    return-void
.end method

.method public searchMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/lang/String;)V
    .locals 0
    .parameter "result"
    .parameter "accountKey"
    .parameter "mailboxKey"
    .parameter "progress"
    .parameter "numNewMessages"
    .parameter "statusCode"

    .prologue
    .line 4499
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 4441
    return-void
.end method

.method public sendMeetingEditedResponseCallback(ZJJ)V
    .locals 0
    .parameter "success"
    .parameter "messageId"
    .parameter "draftId"

    .prologue
    .line 4587
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
    .line 4418
    return-void
.end method

.method protected setRegistered(Z)V
    .locals 0
    .parameter "registered"

    .prologue
    .line 4316
    iput-boolean p1, p0, Lcom/android/email/Controller$Result;->mRegistered:Z

    .line 4317
    return-void
.end method

.method public setupAccountCallback(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 4480
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 4367
    return-void
.end method

.method public updateMailboxListCallback(ILcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "cmd"
    .parameter "result"
    .parameter "accountKey"
    .parameter "progress"

    .prologue
    .line 4351
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 4346
    return-void
.end method

.method public updateUserProfileCallback(Landroid/os/Bundle;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 4540
    return-void
.end method
