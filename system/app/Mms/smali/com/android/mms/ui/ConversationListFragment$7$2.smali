.class Lcom/android/mms/ui/ConversationListFragment$7$2;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationListFragment$7;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$7$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 572
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$7$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$7;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$7;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 573
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$7$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$7;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$7;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "csc_pref_key_auto_delete"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 575
    .local v0, defaultValue:Z
    const-string v2, "pref_key_auto_delete"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 576
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 577
    return-void
.end method
