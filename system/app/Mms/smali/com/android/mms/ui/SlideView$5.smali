.class Lcom/android/mms/ui/SlideView$5;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field attachment:Lcom/android/mms/model/AttachmentModel;

.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 1
    .parameter

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$5;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1298
    sget-object v0, Lcom/android/mms/ui/SlideView;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView$5;->attachment:Lcom/android/mms/model/AttachmentModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$5;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$2900(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1301
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$5;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->rawAttachments:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$3000(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1302
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$5;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->replaceFileMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$3100(Lcom/android/mms/ui/SlideView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1303
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$5;->this$0:Lcom/android/mms/ui/SlideView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$5;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView;->saveAttachFile(Lcom/android/mms/model/AttachmentModel;)V

    .line 1304
    return-void
.end method
