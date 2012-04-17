.class Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;
.super Ljava/lang/Object;
.source "AttachmentDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/app/AttachmentDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasicInfo"
.end annotation


# instance fields
.field public mAccountId:I

.field public mAttachmentId:I

.field final synthetic this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/seven/Z7/app/AttachmentDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/seven/Z7/app/AttachmentDetailsActivity;Lcom/seven/Z7/app/AttachmentDetailsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;-><init>(Lcom/seven/Z7/app/AttachmentDetailsActivity;)V

    return-void
.end method
