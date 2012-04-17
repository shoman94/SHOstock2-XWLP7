.class public interface abstract Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageUpdateCallbacks"
.end annotation


# virtual methods
.method public abstract onMessageUidChange(Lcom/android/emailcommon/mail/Message;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method
