.class Lcom/android/mms/ui/SlideshowPresenter$5;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowPresenter;->onModelChanged(Lcom/android/mms/model/Model;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;

.field final synthetic val$dataChanged:Z

.field final synthetic val$model:Lcom/android/mms/model/Model;

.field final synthetic val$view:Lcom/android/mms/ui/SlideViewInterface;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$5;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowPresenter$5;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowPresenter$5;->val$model:Lcom/android/mms/model/Model;

    iput-boolean p4, p0, Lcom/android/mms/ui/SlideshowPresenter$5;->val$dataChanged:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 658
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$5;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter$5;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$5;->val$model:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/AudioModel;

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter$5;->val$dataChanged:Z

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Mms/SlideshowPresenter"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 661
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$5;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v1, v1, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$5;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, v2, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
