.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;
.super Landroid/os/Handler;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->access$1900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->access$1500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->access$1600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->access$1500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_WIDTH:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->access$1600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_HEIGHT:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->access$1800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1407
    return-void
.end method
