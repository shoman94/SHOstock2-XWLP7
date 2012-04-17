.class Lcom/android/contacts/group/GroupEditorFragment$3;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$3;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$3;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #calls: Lcom/android/contacts/group/GroupEditorFragment;->startEditMember()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$100(Lcom/android/contacts/group/GroupEditorFragment;)V

    .line 506
    return-void
.end method
