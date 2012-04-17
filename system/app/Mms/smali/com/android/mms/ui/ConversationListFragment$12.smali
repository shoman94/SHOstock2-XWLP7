.class final Lcom/android/mms/ui/ConversationListFragment$12;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$12;->val$listener:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListFragment$12;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$12;->val$listener:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$12;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 1172
    return-void
.end method
