.class Lcom/sec/android/app/camera/AbstractCameraActivity$20;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$20;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1260
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$20;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->removeDialog(I)V

    .line 1261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DIRECT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1262
    .local v0, localIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$20;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1263
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$20;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 1264
    return-void
.end method
