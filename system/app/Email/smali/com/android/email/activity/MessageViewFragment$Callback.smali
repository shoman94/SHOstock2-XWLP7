.class public interface abstract Lcom/android/email/activity/MessageViewFragment$Callback;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageViewFragmentBase$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract moveToNewerView()V
.end method

.method public abstract moveToOlderView()V
.end method

.method public abstract onBeforeMessageDelete()V
.end method

.method public abstract onCalendarLinkClicked(J)V
.end method

.method public abstract onCompose()V
.end method

.method public abstract onForward()V
.end method

.method public abstract onMessageSetUnread()V
.end method

.method public abstract onMoveMessage()V
.end method

.method public abstract onReply()V
.end method

.method public abstract onReplyAll()V
.end method

.method public abstract onRespondedToInvite(I)V
.end method

.method public abstract removeIrmProtection(J)V
.end method
