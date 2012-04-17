.class public Lcom/android/emailcommon/utility/DeviceAccessException;
.super Lcom/android/emailcommon/mail/MessagingException;
.source "DeviceAccessException.java"


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "exceptionType"
    .parameter "exceptionMessage"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "exceptionType"
    .parameter "message"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    .line 12
    return-void
.end method
