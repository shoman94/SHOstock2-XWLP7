.class Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmOkListener"
.end annotation


# instance fields
.field mDrmFileNames:[Ljava/lang/String;

.field mDrmFilePaths:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter "drmFilePaths"
    .parameter "drmFileName"
    .parameter "callback"

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1427
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    .line 1428
    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFileNames:[Ljava/lang/String;

    .line 1429
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1433
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmOkListener : DRM filepath ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "DrmOkListener : StartActivity DrmContentsActivity.class"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const-class v2, Lcom/android/mms/ui/DrmContentsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1436
    const-string v1, "drmFilePath"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1437
    const-string v1, "drmFileName"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFileNames:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1438
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowActivity;->startActivity(Landroid/content/Intent;)V

    .line 1440
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1441
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 1442
    return-void
.end method
