.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarsetup()Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->LOGS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v0, v1, :cond_1

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->sendNum()V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v0, v1, :cond_2

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onPickerResult()V

    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onPickerResult()V

    goto :goto_0

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onPickerResult()V

    goto :goto_0
.end method
