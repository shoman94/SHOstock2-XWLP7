.class public interface abstract Lcom/android/email/activity/MessageViewFragmentBase$Callback;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onLoadMessageError(Ljava/lang/String;)V
.end method

.method public abstract onLoadMessageFinished()V
.end method

.method public abstract onLoadMessageStarted()V
.end method

.method public abstract onMessageNotExists()V
.end method

.method public abstract onMessageViewGone()V
.end method

.method public abstract onMessageViewShown(I)V
.end method

.method public abstract onUrlInMessageClicked(Ljava/lang/String;)Z
.end method
