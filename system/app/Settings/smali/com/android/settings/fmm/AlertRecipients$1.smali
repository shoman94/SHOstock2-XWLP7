.class Lcom/android/settings/fmm/AlertRecipients$1;
.super Ljava/lang/Object;
.source "AlertRecipients.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/AlertRecipients;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/AlertRecipients;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/AlertRecipients;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/fmm/AlertRecipients$1;->this$0:Lcom/android/settings/fmm/AlertRecipients;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fmm/AlertRecipients$1;->this$0:Lcom/android/settings/fmm/AlertRecipients;

    #getter for: Lcom/android/settings/fmm/AlertRecipients;->PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;
    invoke-static {v0}, Lcom/android/settings/fmm/AlertRecipients;->access$000(Lcom/android/settings/fmm/AlertRecipients;)Lcom/android/settings/fmm/RecipientsPlusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsPlusView;->DoSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/fmm/AlertRecipients$1;->this$0:Lcom/android/settings/fmm/AlertRecipients;

    invoke-virtual {v0}, Lcom/android/settings/fmm/AlertRecipients;->finish()V

    .line 59
    :cond_0
    return-void
.end method
