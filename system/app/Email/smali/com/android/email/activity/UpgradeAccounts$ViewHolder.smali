.class Lcom/android/email/activity/UpgradeAccounts$ViewHolder;
.super Ljava/lang/Object;
.source "UpgradeAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field displayName:Landroid/widget/TextView;

.field errorReport:Landroid/widget/TextView;

.field progress:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/UpgradeAccounts$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;-><init>()V

    return-void
.end method
