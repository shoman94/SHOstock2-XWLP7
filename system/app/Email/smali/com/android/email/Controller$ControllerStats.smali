.class public Lcom/android/email/Controller$ControllerStats;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerStats"
.end annotation


# static fields
.field private static syncStats:Lcom/android/email/mail/transport/DiscourseLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6924
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/Controller$ControllerStats;->syncStats:Lcom/android/email/mail/transport/DiscourseLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6922
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump()V
    .locals 2

    .prologue
    .line 6931
    sget-object v0, Lcom/android/email/Controller$ControllerStats;->syncStats:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz v0, :cond_0

    .line 6932
    const-string v0, "ControllerStats"

    const-string v1, "SYNC Statistics ::"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6933
    sget-object v0, Lcom/android/email/Controller$ControllerStats;->syncStats:Lcom/android/email/mail/transport/DiscourseLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse(Z)V

    .line 6935
    :cond_0
    return-void
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 6927
    new-instance v0, Lcom/android/email/mail/transport/DiscourseLogger;

    const/16 v1, 0x3c

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/transport/DiscourseLogger;-><init>(IZ)V

    sput-object v0, Lcom/android/email/Controller$ControllerStats;->syncStats:Lcom/android/email/mail/transport/DiscourseLogger;

    .line 6928
    return-void
.end method
