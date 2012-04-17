.class Lcom/android/email/activity/PoliciesList$PolicyItem;
.super Ljava/lang/Object;
.source "PoliciesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/PoliciesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyItem"
.end annotation


# instance fields
.field private Value:Ljava/lang/String;

.field private policyName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/PoliciesList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "value"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/email/activity/PoliciesList$PolicyItem;->this$0:Lcom/android/email/activity/PoliciesList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p2, p0, Lcom/android/email/activity/PoliciesList$PolicyItem;->policyName:Ljava/lang/String;

    .line 699
    iput-object p3, p0, Lcom/android/email/activity/PoliciesList$PolicyItem;->Value:Ljava/lang/String;

    .line 700
    return-void
.end method


# virtual methods
.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList$PolicyItem;->policyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList$PolicyItem;->Value:Ljava/lang/String;

    return-object v0
.end method
