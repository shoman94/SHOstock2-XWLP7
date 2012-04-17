.class Lcom/android/mms/ui/SlideshowPresenter$1;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowPresenter;
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
    .line 123
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    .line 129
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v6, v6, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v6, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v1

    .line 135
    .local v1, layout:Lcom/android/mms/model/LayoutModel;
    const/4 v5, 0x0

    .line 136
    .local v5, screenWidth:I
    const/4 v4, 0x0

    .line 138
    .local v4, screenHeight:I
    const/4 v0, 0x0

    .line 140
    .local v0, gap:I
    invoke-virtual {v1}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v3

    .line 141
    .local v3, layoutWidth:I
    invoke-virtual {v1}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v2

    .line 143
    .local v2, layoutHeight:I
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v5

    .line 144
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v4

    .line 146
    sub-int v0, v4, p2

    .line 148
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 149
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    #calls: Lcom/android/mms/ui/SlideshowPresenter;->getTransformRatio(II)F
    invoke-static {v7, p1, v3}, Lcom/android/mms/ui/SlideshowPresenter;->access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F

    move-result v7

    iput v7, v6, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    #calls: Lcom/android/mms/ui/SlideshowPresenter;->getTransformRatio(II)F
    invoke-static {v7, v4, v3}, Lcom/android/mms/ui/SlideshowPresenter;->access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F

    move-result v7

    iput v7, v6, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    goto :goto_0
.end method
