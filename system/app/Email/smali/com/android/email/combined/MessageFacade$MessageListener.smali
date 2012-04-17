.class public interface abstract Lcom/android/email/combined/MessageFacade$MessageListener;
.super Ljava/lang/Object;
.source "MessageFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/combined/MessageFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageListener"
.end annotation


# virtual methods
.method public abstract onFolderFailed(Lcom/android/email/combined/EmailException;)V
.end method

.method public abstract onFolderFinished(J)V
.end method

.method public abstract onFolderStarted()V
.end method

.method public abstract onMessageFailed(Lcom/android/email/combined/EmailException;)V
.end method

.method public abstract onMessageFinished(J)V
.end method

.method public abstract onMessageStarted()V
.end method
