.class Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
.super Ljava/lang/Object;
.source "MailboxesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MailboxExtraData"
.end annotation


# instance fields
.field hasChild:Z

.field isExpanded:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MailboxesAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;-><init>()V

    return-void
.end method
