.class Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$2;
.super Ljava/lang/Object;
.source "PeopleActivityForAdjustActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->setUpActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$2;->this$0:Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$2;->this$0:Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;

    #calls: Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->showDeleteContactsDialog()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->access$000(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;)V

    .line 212
    return-void
.end method
