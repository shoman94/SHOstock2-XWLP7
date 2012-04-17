.class Lcom/android/email/activity/PoliciesList$PolicyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PoliciesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/PoliciesList$PolicyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field text:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/email/activity/PoliciesList$PolicyAdapter;

.field value:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/PoliciesList$PolicyAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/email/activity/PoliciesList$PolicyAdapter$ViewHolder;->this$1:Lcom/android/email/activity/PoliciesList$PolicyAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/PoliciesList$PolicyAdapter;Lcom/android/email/activity/PoliciesList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 684
    invoke-direct {p0, p1}, Lcom/android/email/activity/PoliciesList$PolicyAdapter$ViewHolder;-><init>(Lcom/android/email/activity/PoliciesList$PolicyAdapter;)V

    return-void
.end method
