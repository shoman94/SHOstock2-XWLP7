.class Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
.super Ljava/lang/Object;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAttachmentTaskReportInfo"
.end annotation


# instance fields
.field attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field bitmap:Landroid/graphics/Bitmap;

.field checkBitmap:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 3435
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3435
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method
