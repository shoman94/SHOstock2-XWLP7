.class Lcom/android/email/activity/utils/spellcheck/UserDictionary$1;
.super Landroid/database/ContentObserver;
.source "UserDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/utils/spellcheck/UserDictionary;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/utils/spellcheck/UserDictionary;


# direct methods
.method constructor <init>(Lcom/android/email/activity/utils/spellcheck/UserDictionary;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary$1;->this$0:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "self"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary$1;->this$0:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mRequiresReload:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->access$002(Lcom/android/email/activity/utils/spellcheck/UserDictionary;Z)Z

    .line 42
    return-void
.end method
