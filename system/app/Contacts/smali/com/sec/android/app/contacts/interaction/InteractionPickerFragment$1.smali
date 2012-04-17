.class Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$1;
.super Ljava/lang/Object;
.source "InteractionPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)I

    move-result v0

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)I

    move-result v0

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->excuteSelectAllVcard()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->excuteSelectAllContacts()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V

    goto :goto_0
.end method
