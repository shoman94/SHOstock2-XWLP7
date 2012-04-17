.class public Lcom/android/email/mail/Sender$LimitViolationException;
.super Lcom/android/emailcommon/mail/MessagingException;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitViolationException"
.end annotation


# instance fields
.field public final mActual:J

.field public final mLimit:J

.field public final mMsgResourceId:I
