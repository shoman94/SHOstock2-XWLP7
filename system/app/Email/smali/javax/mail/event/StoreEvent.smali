.class public Ljavax/mail/event/StoreEvent;
.super Ljavax/mail/event/MailEvent;
.source "StoreEvent.java"


# instance fields
.field protected message:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Ljavax/mail/Store;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 71
    iput p2, p0, Ljavax/mail/event/StoreEvent;->type:I

    .line 72
    iput-object p3, p0, Ljavax/mail/event/StoreEvent;->message:Ljava/lang/String;

    .line 73
    return-void
.end method
