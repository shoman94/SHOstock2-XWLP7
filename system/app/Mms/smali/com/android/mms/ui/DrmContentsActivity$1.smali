.class Lcom/android/mms/ui/DrmContentsActivity$1;
.super Ljava/lang/Object;
.source "DrmContentsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DrmContentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DrmContentsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DrmContentsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/mms/ui/DrmContentsActivity$1;->this$0:Lcom/android/mms/ui/DrmContentsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/mms/ui/DrmContentsActivity$1;->this$0:Lcom/android/mms/ui/DrmContentsActivity;

    #getter for: Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemAdapter:Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/DrmContentsActivity;->access$000(Lcom/android/mms/ui/DrmContentsActivity;)Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;

    .line 57
    .local v2, item:Lcom/android/mms/ui/DrmContentsActivity$DrmItem;
    invoke-virtual {v2}, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, drmFilePath:Ljava/lang/String;
    :try_start_0
    const-string v3, "DrmContentsActivity"

    const-string v4, "DrmContentsActivity OnItemClickListener : DRM rights acquireLicense start."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/android/mms/ui/DrmContentsActivity$1;->this$0:Lcom/android/mms/ui/DrmContentsActivity;

    #calls: Lcom/android/mms/ui/DrmContentsActivity;->acqueireLicense(Ljava/lang/String;)Z
    invoke-static {v3, v0}, Lcom/android/mms/ui/DrmContentsActivity;->access$100(Lcom/android/mms/ui/DrmContentsActivity;Ljava/lang/String;)Z

    .line 62
    const-string v3, "DrmContentsActivity"

    const-string v4, "DrmContentsActivity OnItemClickListener : DRM rights acquireLicense end."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
