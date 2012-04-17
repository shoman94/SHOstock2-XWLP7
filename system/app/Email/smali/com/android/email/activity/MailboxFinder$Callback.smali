.class public interface abstract Lcom/android/email/activity/MailboxFinder$Callback;
.super Ljava/lang/Object;
.source "MailboxFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAccountNotFound()V
.end method

.method public abstract onAccountSecurityHold(J)V
.end method

.method public abstract onMailboxFound(JJ)V
.end method

.method public abstract onMailboxNotFound(J)V
.end method
