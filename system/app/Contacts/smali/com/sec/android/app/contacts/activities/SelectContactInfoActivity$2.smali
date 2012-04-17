.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$2;
.super Ljava/lang/Object;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setupTitle(Landroid/app/ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->performSendAction(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$200(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Z)V

    .line 346
    return-void
.end method
