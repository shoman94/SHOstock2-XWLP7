.class final Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$ReplaceContactListListener;
.super Ljava/lang/Object;
.source "PeopleActivityForAdjustActionBar.java"

# interfaces
.implements Lcom/android/contacts/list/OnReplaceContactActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReplaceContactListListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$ReplaceContactListListener;->this$0:Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$ReplaceContactListListener;-><init>(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;)V

    return-void
.end method


# virtual methods
.method public onAllDataDeleted()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$ReplaceContactListListener;->this$0:Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->setButtonClickable(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->access$200(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;Z)V

    .line 330
    return-void
.end method

.method public onOneDataInputed()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$ReplaceContactListListener;->this$0:Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;

    const/4 v1, 0x1

    #calls: Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->setButtonClickable(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->access$200(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;Z)V

    .line 325
    return-void
.end method

.method public onViewContactAction(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 336
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ignoreDefaultUpBehavior"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$ReplaceContactListListener;->this$0:Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->startActivity(Landroid/content/Intent;)V

    .line 339
    return-void
.end method
