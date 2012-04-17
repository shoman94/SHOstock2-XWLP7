.class public Lcom/android/email/combined/MessageFacade;
.super Ljava/lang/Object;
.source "MessageFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/combined/MessageFacade$MessageListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/email/combined/MessageFacade;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public addFolder(IILjava/lang/String;)V
    .locals 1
    .parameter "remoteAccountId"
    .parameter "remoteFolderId"
    .parameter "remoteFolderName"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    .line 98
    .local v0, behavior:Lcom/android/email/combined/MessageBehavior;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/combined/MessageBehavior;->addFolder(IILjava/lang/String;)V

    .line 99
    return-void
.end method

.method public addListener(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    .line 49
    .local v0, behavior:Lcom/android/email/combined/MessageBehavior;
    check-cast p1, Lcom/android/email/combined/MessageFacade$MessageListener;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/email/combined/MessageBehavior;->addListener(Lcom/android/email/combined/MessageFacade$MessageListener;)V

    .line 50
    return-void
.end method

.method public addMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 1
    .parameter "message"
    .parameter "body"
    .parameter "attachments"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    .line 86
    .local v0, behavior:Lcom/android/email/combined/MessageBehavior;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/combined/MessageBehavior;->addMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 87
    return-void
.end method

.method public getBehavior()Lcom/android/email/combined/MessageBehavior;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/email/combined/MessageFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/combined/MessageBehavior;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    return-object v0
.end method

.method public removeFolder(II)V
    .locals 1
    .parameter "remoteAccountId"
    .parameter "remoteFolderId"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    .line 121
    .local v0, behavior:Lcom/android/email/combined/MessageBehavior;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/combined/MessageBehavior;->removeFolder(II)V

    .line 122
    return-void
.end method

.method public removeListener(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    .line 62
    .local v0, behavior:Lcom/android/email/combined/MessageBehavior;
    check-cast p1, Lcom/android/email/combined/MessageFacade$MessageListener;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/email/combined/MessageBehavior;->removeListener(Lcom/android/email/combined/MessageFacade$MessageListener;)V

    .line 63
    return-void
.end method

.method public removeMessage(II)V
    .locals 1
    .parameter "remoteMessageId"
    .parameter "remoteFolderId"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    .line 166
    .local v0, behavior:Lcom/android/email/combined/MessageBehavior;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/combined/MessageBehavior;->removeMessage(II)V

    .line 167
    return-void
.end method

.method public removeMessageForDate(IJ)V
    .locals 1
    .parameter "remoteAccountId"
    .parameter "remainDay"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    .line 177
    .local v0, behavior:Lcom/android/email/combined/MessageBehavior;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/combined/MessageBehavior;->removeMessageForDate(IJ)V

    .line 178
    return-void
.end method

.method public setMessageFavorite(IZ)V
    .locals 1
    .parameter "remoteMessageId"
    .parameter "isFavorite"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    .line 132
    .local v0, behavior:Lcom/android/email/combined/MessageBehavior;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/combined/MessageBehavior;->setMessageFavorite(IZ)V

    .line 133
    return-void
.end method

.method public setMessageRead(IZ)V
    .locals 1
    .parameter "remoteMessageId"
    .parameter "isRead"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    .line 143
    .local v0, behavior:Lcom/android/email/combined/MessageBehavior;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/combined/MessageBehavior;->setMessageRead(IZ)V

    .line 144
    return-void
.end method

.method public syncMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 0
    .parameter "message"
    .parameter "body"
    .parameter "attachments"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/combined/MessageFacade;->addMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 75
    return-void
.end method
