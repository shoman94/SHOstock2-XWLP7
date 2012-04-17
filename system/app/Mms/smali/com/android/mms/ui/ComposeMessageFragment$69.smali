.class Lcom/android/mms/ui/ComposeMessageFragment$69;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 8020
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$69;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 8022
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$69;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    check-cast p1, Lcom/android/mms/ui/ToButton;

    .end local p1
    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showToButtonMenuDialog(Lcom/android/mms/ui/ToButton;)V
    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11600(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ToButton;)V

    .line 8023
    return-void
.end method
