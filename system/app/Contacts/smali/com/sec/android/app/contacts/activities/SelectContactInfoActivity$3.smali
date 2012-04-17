.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$3;
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
    .line 351
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    .line 355
    return-void
.end method
