.class Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout$1;
.super Ljava/lang/Object;
.source "ViewerBubbleLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;


# direct methods
.method constructor <init>(Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout$1;->this$0:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout$1;->this$0:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    #calls: Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->showBubbleButtonClickMenu(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->access$000(Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;Landroid/view/View;)V

    .line 490
    return-void
.end method
