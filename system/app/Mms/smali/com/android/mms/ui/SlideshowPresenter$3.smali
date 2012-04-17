.class Lcom/android/mms/ui/SlideshowPresenter$3;
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


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    #getter for: Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowPresenter;->access$100(Lcom/android/mms/ui/SlideshowPresenter;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v2

    #calls: Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideIndex(I)I
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideshowPresenter;->access$200(Lcom/android/mms/ui/SlideshowPresenter;I)I

    move-result v0

    .line 629
    .local v0, currentSlide:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, v1, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-nez v1, :cond_0

    .line 636
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, v1, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->goBackward()V

    goto :goto_0

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->goForward()V

    goto :goto_0
.end method
