.class Lcom/android/email/activity/MessageCompose$49;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onImageAttachmentResult(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 11554
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$49;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 11556
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$49;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I
    invoke-static {v0, p2}, Lcom/android/email/activity/MessageCompose;->access$11902(Lcom/android/email/activity/MessageCompose;I)I

    .line 11557
    return-void
.end method
