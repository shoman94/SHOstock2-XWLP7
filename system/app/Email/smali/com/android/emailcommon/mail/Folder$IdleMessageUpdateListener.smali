.class public interface abstract Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IdleMessageUpdateListener"
.end annotation


# virtual methods
.method public abstract messageDeleted(I)V
.end method

.method public abstract messageFlagChanged(Lcom/android/emailcommon/mail/Message;)V
.end method

.method public abstract messageReceived()V
.end method
