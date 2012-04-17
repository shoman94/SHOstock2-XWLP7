.class public interface abstract Lcom/android/email/RefreshManager$Listener;
.super Ljava/lang/Object;
.source "RefreshManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/RefreshManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onMessagingError(JJLjava/lang/String;)V
.end method

.method public abstract onRefreshStatusChanged(JJ)V
.end method
