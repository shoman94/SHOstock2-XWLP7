.class Lcom/android/contacts/list/CustomContactListFilterActivity$4;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;->showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

.field final synthetic val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

.field final synthetic val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

.field final synthetic val$syncMode:I

.field final synthetic val$title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    iput-object p2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iput-object p3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    iput p4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$syncMode:I

    iput-object p5, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$title:Ljava/lang/CharSequence;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    iget v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$syncMode:I

    iget-object v4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/list/CustomContactListFilterActivity;->handleRemoveSync(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V

    .line 880
    const/4 v0, 0x1

    return v0
.end method
