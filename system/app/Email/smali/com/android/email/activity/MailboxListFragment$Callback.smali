.class public interface abstract Lcom/android/email/activity/MailboxListFragment$Callback;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAccountSelected(J)V
.end method

.method public abstract onCurrentMailboxUpdated(JLjava/lang/String;II)V
.end method

.method public abstract onMailboxSelected(JJLjava/lang/String;II)V
.end method

.method public abstract setAllMailboxCursor(Landroid/database/Cursor;)V
.end method

.method public abstract setTotalCountFromMailbox(IZ)V
.end method
