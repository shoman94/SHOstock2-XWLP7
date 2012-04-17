.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

.field final synthetic val$mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field final synthetic val$snapshot:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2760
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;->val$mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 2765
    const/16 v0, 0xa

    .line 2766
    .local v0, ROW_DELAY_DECREMENT:I
    const/16 v2, 0x8c

    .line 2767
    .local v2, currentDelay:I
    const/4 v5, 0x0

    .line 2772
    .local v5, totalDelay:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;->val$mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setViewRemoval(Z)V

    .line 2774
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1$1;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;)V

    iput-object v10, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 2783
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2784
    .local v4, sampleView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 2785
    .local v8, width:I
    mul-int/lit8 v7, v8, 0x8

    .line 2786
    .local v7, velocity:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2787
    .local v6, v:Landroid/view/View;
    move-object v1, v6

    .line 2788
    .local v1, _v:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1$2;

    invoke-direct {v10, p0, v1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;Landroid/view/View;I)V

    int-to-long v11, v5

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2794
    const/16 v9, 0x32

    add-int/lit8 v10, v2, -0xa

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2795
    add-int/2addr v5, v2

    .line 2796
    goto :goto_0

    .line 2802
    .end local v1           #_v:Landroid/view/View;
    .end local v6           #v:Landroid/view/View;
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1$3;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;)V

    add-int/lit16 v11, v5, 0xe1

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2807
    return-void
.end method
