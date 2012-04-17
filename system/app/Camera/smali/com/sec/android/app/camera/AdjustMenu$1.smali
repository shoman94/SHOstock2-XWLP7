.class Lcom/sec/android/app/camera/AdjustMenu$1;
.super Ljava/lang/Object;
.source "AdjustMenu.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/AdjustMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AdjustMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AdjustMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 162
    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-le p2, v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #setter for: Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I
    invoke-static {v0, p2}, Lcom/sec/android/app/camera/AdjustMenu;->access$302(Lcom/sec/android/app/camera/AdjustMenu;I)I

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/sec/android/app/camera/AdjustMenu;->access$400(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/camera/AdjustMenu;->access$500(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I
    invoke-static {v3}, Lcom/sec/android/app/camera/AdjustMenu;->access$300(Lcom/sec/android/app/camera/AdjustMenu;)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    #calls: Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/AdjustMenu;->access$600(Lcom/sec/android/app/camera/AdjustMenu;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/sec/android/app/camera/AdjustMenu;->access$400(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I
    invoke-static {v2}, Lcom/sec/android/app/camera/AdjustMenu;->access$300(Lcom/sec/android/app/camera/AdjustMenu;)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    #calls: Lcom/sec/android/app/camera/AdjustMenu;->updatePopupText(Landroid/widget/SeekBar;I)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->access$700(Lcom/sec/android/app/camera/AdjustMenu;Landroid/widget/SeekBar;I)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I
    invoke-static {v1}, Lcom/sec/android/app/camera/AdjustMenu;->access$300(Lcom/sec/android/app/camera/AdjustMenu;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeContrastPreview(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/camera/AdjustMenu;->access$500(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/sec/android/app/camera/AdjustMenu;->access$400(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I
    invoke-static {v2}, Lcom/sec/android/app/camera/AdjustMenu;->access$300(Lcom/sec/android/app/camera/AdjustMenu;)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    #calls: Lcom/sec/android/app/camera/AdjustMenu;->updatePopupText(Landroid/widget/SeekBar;I)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->access$700(Lcom/sec/android/app/camera/AdjustMenu;Landroid/widget/SeekBar;I)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/camera/AdjustMenu;->access$800(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/camera/AdjustMenu;->access$500(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$1;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/camera/AdjustMenu;->access$800(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    return-void
.end method
