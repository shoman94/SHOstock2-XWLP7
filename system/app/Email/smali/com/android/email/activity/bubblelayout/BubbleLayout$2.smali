.class Lcom/android/email/activity/bubblelayout/BubbleLayout$2;
.super Ljava/lang/Object;
.source "BubbleLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;Z)Lcom/android/email/activity/bubblelayout/BubbleButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;


# direct methods
.method constructor <init>(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$2;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$2;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    #calls: Lcom/android/email/activity/bubblelayout/BubbleLayout;->showBubbleButtonClickMenu(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->access$100(Lcom/android/email/activity/bubblelayout/BubbleLayout;Landroid/view/View;)V

    .line 647
    return-void
.end method
