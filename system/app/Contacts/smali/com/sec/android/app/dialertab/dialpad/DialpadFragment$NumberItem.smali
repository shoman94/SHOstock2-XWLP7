.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberItem"
.end annotation


# instance fields
.field private mNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "number"

    .prologue
    .line 2213
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2214
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->type:I

    .line 2215
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->mNumber:Ljava/lang/String;

    .line 2216
    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2219
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->type:I

    return v0
.end method
