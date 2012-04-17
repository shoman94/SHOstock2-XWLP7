.class Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAttachmentTaskReportInfo"
.end annotation


# instance fields
.field attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field bitmap:Landroid/graphics/Bitmap;

.field checkBitmap:Z

.field isLoaded:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter

    .prologue
    .line 4117
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4117
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method
