.class Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustScrollerCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1788
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1790
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    #setter for: Lcom/android/mms/ui/NumberPicker;->mPreviousScrollerY:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/NumberPicker;->access$1402(Lcom/android/mms/ui/NumberPicker;I)I

    .line 1791
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$1500(Lcom/android/mms/ui/NumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/android/mms/ui/NumberPicker;->access$1600(Lcom/android/mms/ui/NumberPicker;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    #calls: Lcom/android/mms/ui/NumberPicker;->updateInputTextView()V
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$1700(Lcom/android/mms/ui/NumberPicker;)V

    .line 1793
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mShowInputControlsAnimimationDuration:J
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$1800(Lcom/android/mms/ui/NumberPicker;)J

    move-result-wide v1

    #calls: Lcom/android/mms/ui/NumberPicker;->showInputControls(J)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/NumberPicker;->access$1900(Lcom/android/mms/ui/NumberPicker;J)V

    .line 1803
    :goto_0
    return-void

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$1500(Lcom/android/mms/ui/NumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/android/mms/ui/NumberPicker;->access$1600(Lcom/android/mms/ui/NumberPicker;)I

    move-result v2

    sub-int v4, v0, v2

    .line 1798
    .local v4, deltaY:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I
    invoke-static {v2}, Lcom/android/mms/ui/NumberPicker;->access$2000(Lcom/android/mms/ui/NumberPicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 1799
    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$2000(Lcom/android/mms/ui/NumberPicker;)I

    move-result v0

    neg-int v0, v0

    :goto_1
    add-int/2addr v4, v0

    .line 1801
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$2100(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/Scroller;

    move-result-object v0

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1802
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1799
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$2000(Lcom/android/mms/ui/NumberPicker;)I

    move-result v0

    goto :goto_1
.end method
