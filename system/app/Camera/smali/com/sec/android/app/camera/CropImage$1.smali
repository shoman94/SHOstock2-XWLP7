.class Lcom/sec/android/app/camera/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$1;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, result:Landroid/content/Intent;
    const-string v1, "delete-image"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$1;->this$0:Lcom/sec/android/app/camera/CropImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$1;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 206
    return-void
.end method
