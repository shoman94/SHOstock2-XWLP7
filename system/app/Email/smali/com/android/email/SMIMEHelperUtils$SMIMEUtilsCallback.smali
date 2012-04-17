.class public interface abstract Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
.super Ljava/lang/Object;
.source "SMIMEHelperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SMIMEHelperUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SMIMEUtilsCallback"
.end annotation


# virtual methods
.method public abstract attachmentProgress(ZJI)V
.end method

.method public abstract displayToast(I)V
.end method

.method public abstract finish()V
.end method

.method public abstract markAsRead(Z)V
.end method

.method public abstract messageChanged()V
.end method

.method public abstract setDownloadSmimeAttachment(Z)V
.end method

.method public abstract updateAttachmentCallback(JZLjava/lang/String;)V
.end method
