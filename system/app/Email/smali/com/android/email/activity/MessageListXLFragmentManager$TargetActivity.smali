.class public interface abstract Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
.super Ljava/lang/Object;
.source "MessageListXLFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXLFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TargetActivity"
.end annotation


# virtual methods
.method public abstract findViewById(I)Landroid/view/View;
.end method

.method public abstract getFragmentManager()Landroid/app/FragmentManager;
.end method

.method public abstract onAccountChanged(J)V
.end method

.method public abstract onAccountSecurityHold(J)V
.end method

.method public abstract onMailboxChanged(JJ)V
.end method

.method public abstract onMoveToNewer()V
.end method

.method public abstract onMoveToOlder()V
.end method
