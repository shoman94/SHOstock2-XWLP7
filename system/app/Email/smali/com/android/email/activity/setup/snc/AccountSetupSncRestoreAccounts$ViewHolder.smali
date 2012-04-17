.class public Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;
.super Ljava/lang/Object;
.source "AccountSetupSncRestoreAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public accountIconView:Landroid/widget/ImageView;

.field public accountNameView:Landroid/widget/TextView;

.field public endpointName:Ljava/lang/String;

.field public serviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;"
        }
    .end annotation
.end field

.field public userName:Ljava/lang/String;

.field public userNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
